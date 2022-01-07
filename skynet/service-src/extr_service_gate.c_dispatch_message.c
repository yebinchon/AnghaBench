
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct gate {int mp; struct skynet_context* ctx; int header_size; } ;
struct connection {int buffer; } ;


 int _forward (struct gate*,struct connection*,int) ;
 int databuffer_clear (int *,int *) ;
 int databuffer_push (int *,int *,void*,int) ;
 int databuffer_readheader (int *,int *,int ) ;
 int databuffer_reset (int *) ;
 int skynet_error (struct skynet_context*,char*) ;
 int skynet_socket_close (struct skynet_context*,int) ;

__attribute__((used)) static void
dispatch_message(struct gate *g, struct connection *c, int id, void * data, int sz) {
 databuffer_push(&c->buffer,&g->mp, data, sz);
 for (;;) {
  int size = databuffer_readheader(&c->buffer, &g->mp, g->header_size);
  if (size < 0) {
   return;
  } else if (size > 0) {
   if (size >= 0x1000000) {
    struct skynet_context * ctx = g->ctx;
    databuffer_clear(&c->buffer,&g->mp);
    skynet_socket_close(ctx, id);
    skynet_error(ctx, "Recv socket message > 16M");
    return;
   } else {
    _forward(g, c, size);
    databuffer_reset(&c->buffer);
   }
  }
 }
}
