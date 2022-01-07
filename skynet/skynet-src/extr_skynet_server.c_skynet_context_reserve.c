
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int context_dec () ;
 int skynet_context_grab (struct skynet_context*) ;

void
skynet_context_reserve(struct skynet_context *ctx) {
 skynet_context_grab(ctx);


 context_dec();
}
