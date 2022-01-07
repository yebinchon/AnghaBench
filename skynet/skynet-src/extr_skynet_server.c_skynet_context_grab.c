
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int ref; } ;


 int ATOM_INC (int *) ;

void
skynet_context_grab(struct skynet_context *ctx) {
 ATOM_INC(&ctx->ref);
}
