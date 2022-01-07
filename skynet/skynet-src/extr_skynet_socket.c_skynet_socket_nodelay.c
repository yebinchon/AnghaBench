
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int SOCKET_SERVER ;
 int socket_server_nodelay (int ,int) ;

void
skynet_socket_nodelay(struct skynet_context *ctx, int id) {
 socket_server_nodelay(SOCKET_SERVER, id);
}
