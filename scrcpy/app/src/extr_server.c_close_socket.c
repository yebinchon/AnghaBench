
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ socket_t ;


 scalar_t__ INVALID_SOCKET ;
 int LOGW (char*) ;
 int SDL_assert (int) ;
 int SHUT_RDWR ;
 int net_close (scalar_t__) ;
 int net_shutdown (scalar_t__,int ) ;

__attribute__((used)) static void
close_socket(socket_t *socket) {
    SDL_assert(*socket != INVALID_SOCKET);
    net_shutdown(*socket, SHUT_RDWR);
    if (!net_close(*socket)) {
        LOGW("Could not close socket");
        return;
    }
    *socket = INVALID_SOCKET;
}
