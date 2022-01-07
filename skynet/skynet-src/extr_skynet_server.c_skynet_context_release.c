
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int ref; } ;


 scalar_t__ ATOM_DEC (int *) ;
 int delete_context (struct skynet_context*) ;

struct skynet_context *
skynet_context_release(struct skynet_context *ctx) {
 if (ATOM_DEC(&ctx->ref) == 0) {
  delete_context(ctx);
  return ((void*)0);
 }
 return ctx;
}
