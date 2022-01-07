
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {int dummy; } ;
struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int socket_server_send_lowpriority (int ,struct socket_sendbuffer*) ;

int
skynet_socket_sendbuffer_lowpriority(struct skynet_context *ctx, struct socket_sendbuffer *buffer) {
 return socket_server_send_lowpriority(SOCKET_SERVER, buffer);
}
