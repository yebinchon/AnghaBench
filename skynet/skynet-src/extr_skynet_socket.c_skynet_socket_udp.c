
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int skynet_context_handle (struct skynet_context*) ;
 int socket_server_udp (int ,int ,char const*,int) ;

int
skynet_socket_udp(struct skynet_context *ctx, const char * addr, int port) {
 uint32_t source = skynet_context_handle(ctx);
 return socket_server_udp(SOCKET_SERVER, source, addr, port);
}
