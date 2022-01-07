
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCKET_SERVER ;
 int skynet_now () ;
 int socket_server_updatetime (int ,int ) ;

void
skynet_socket_updatetime() {
 socket_server_updatetime(SOCKET_SERVER, skynet_now());
}
