
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
struct harbor {int id; scalar_t__ slave; struct skynet_context* ctx; } ;


 int mainloop ;
 int skynet_callback (struct skynet_context*,struct harbor*,int ) ;
 int skynet_harbor_start (struct skynet_context*) ;
 int sscanf (char const*,char*,int*,scalar_t__*) ;

int
harbor_init(struct harbor *h, struct skynet_context *ctx, const char * args) {
 h->ctx = ctx;
 int harbor_id = 0;
 uint32_t slave = 0;
 sscanf(args,"%d %u", &harbor_id, &slave);
 if (slave == 0) {
  return 1;
 }
 h->id = harbor_id;
 h->slave = slave;
 skynet_callback(ctx, h, mainloop);
 skynet_harbor_start(ctx);

 return 0;
}
