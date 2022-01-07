
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int skynet_context_handle (struct skynet_context*) ;
 int socket_server_close (int ,int ,int) ;

void
skynet_socket_close(struct skynet_context *ctx, int id) {
 uint32_t source = skynet_context_handle(ctx);
 socket_server_close(SOCKET_SERVER, source, id);
}
