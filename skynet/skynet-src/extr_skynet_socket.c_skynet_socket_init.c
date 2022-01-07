
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCKET_SERVER ;
 int skynet_now () ;
 int socket_server_create (int ) ;

void
skynet_socket_init() {
 SOCKET_SERVER = socket_server_create(skynet_now());
}
