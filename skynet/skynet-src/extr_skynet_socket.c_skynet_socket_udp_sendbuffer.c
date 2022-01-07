
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_udp_address {int dummy; } ;
struct socket_sendbuffer {int dummy; } ;
struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int socket_server_udp_send (int ,struct socket_udp_address const*,struct socket_sendbuffer*) ;

int
skynet_socket_udp_sendbuffer(struct skynet_context *ctx, const char * address, struct socket_sendbuffer *buffer) {
 return socket_server_udp_send(SOCKET_SERVER, (const struct socket_udp_address *)address, buffer);
}
