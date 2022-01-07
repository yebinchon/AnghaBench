
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chain; int ctx; int gctx; scalar_t__ page; } ;
typedef TYPE_1__ fz_jbig2d ;
typedef int fz_context ;


 int fz_drop_jbig2_globals (int *,int ) ;
 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int jbig2_ctx_free (int ) ;
 int jbig2_release_page (int ,scalar_t__) ;

__attribute__((used)) static void
close_jbig2d(fz_context *ctx, void *state_)
{
 fz_jbig2d *state = state_;
 if (state->page)
  jbig2_release_page(state->ctx, state->page);
 fz_drop_jbig2_globals(ctx, state->gctx);
 jbig2_ctx_free(state->ctx);
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state);
}
