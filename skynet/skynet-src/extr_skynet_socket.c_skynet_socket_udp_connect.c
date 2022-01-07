
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int socket_server_udp_connect (int ,int,char const*,int) ;

int
skynet_socket_udp_connect(struct skynet_context *ctx, int id, const char * addr, int port) {
 return socket_server_udp_connect(SOCKET_SERVER, id, addr, port);
}
