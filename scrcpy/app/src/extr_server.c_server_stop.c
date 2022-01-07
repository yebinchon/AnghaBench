
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {scalar_t__ server_socket; scalar_t__ video_socket; scalar_t__ control_socket; scalar_t__ process; scalar_t__ tunnel_enabled; } ;


 scalar_t__ INVALID_SOCKET ;
 int LOGD (char*) ;
 int LOGW (char*) ;
 scalar_t__ PROCESS_NONE ;
 int SDL_assert (int) ;
 int close_socket (scalar_t__*) ;
 int cmd_simple_wait (scalar_t__,int *) ;
 int cmd_terminate (scalar_t__) ;
 int disable_tunnel (struct server*) ;

void
server_stop(struct server *server) {
    if (server->server_socket != INVALID_SOCKET) {
        close_socket(&server->server_socket);
    }
    if (server->video_socket != INVALID_SOCKET) {
        close_socket(&server->video_socket);
    }
    if (server->control_socket != INVALID_SOCKET) {
        close_socket(&server->control_socket);
    }

    SDL_assert(server->process != PROCESS_NONE);

    if (!cmd_terminate(server->process)) {
        LOGW("Could not terminate server");
    }

    cmd_simple_wait(server->process, ((void*)0));
    LOGD("Server terminated");

    if (server->tunnel_enabled) {

        disable_tunnel(server);
    }
}
