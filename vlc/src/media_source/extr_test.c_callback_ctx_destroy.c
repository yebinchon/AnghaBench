
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_ctx {int vec_children_removed; int vec_children_added; int vec_children_reset; } ;


 int callback_ctx_destroy_reports (struct callback_ctx*) ;
 int vlc_vector_destroy (int *) ;

__attribute__((used)) static inline void
callback_ctx_destroy(struct callback_ctx *ctx)
{
    callback_ctx_destroy_reports(ctx);
    vlc_vector_destroy(&ctx->vec_children_reset);
    vlc_vector_destroy(&ctx->vec_children_added);
    vlc_vector_destroy(&ctx->vec_children_removed);
}
