# stage1: build production bundle
FROM node:22-alpine AS build

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

RUN yarn build 

# stage2: serve the bundle with http server nginx
FROM nginx:1.27.0

COPY --from=build /app/dist /usr/share/nginx/html
