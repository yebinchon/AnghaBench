
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int serial; } ;


 int SDL_free (int ) ;

void
server_destroy(struct server *server) {
    SDL_free(server->serial);
}
