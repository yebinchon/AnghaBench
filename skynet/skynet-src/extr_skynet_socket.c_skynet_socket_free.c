
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * SOCKET_SERVER ;
 int socket_server_release (int *) ;

void
skynet_socket_free() {
 socket_server_release(SOCKET_SERVER);
 SOCKET_SERVER = ((void*)0);
}
