
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {int dummy; } ;
struct skynet_context {int dummy; } ;


 int sendbuffer_init_ (struct socket_sendbuffer*,int,void const*,int) ;
 int skynet_socket_udp_sendbuffer (struct skynet_context*,char const*,struct socket_sendbuffer*) ;

__attribute__((used)) static inline int skynet_socket_udp_send(struct skynet_context *ctx, int id, const char * address, const void *buffer, int sz) {
 struct socket_sendbuffer tmp;
 sendbuffer_init_(&tmp, id, buffer, sz);
 return skynet_socket_udp_sendbuffer(ctx, address, &tmp);
}
