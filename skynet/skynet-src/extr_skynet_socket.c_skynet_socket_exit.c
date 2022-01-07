
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCKET_SERVER ;
 int socket_server_exit (int ) ;

void
skynet_socket_exit() {
 socket_server_exit(SOCKET_SERVER);
}
