
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_ctx {int vec_has_next_changed; int vec_has_prev_changed; int vec_current_index_changed; int vec_playback_order_changed; int vec_playback_repeat_changed; int vec_items_removed; int vec_items_moved; int vec_items_added; int vec_items_reset; } ;


 int vlc_vector_destroy (int *) ;

__attribute__((used)) static inline void
callback_ctx_destroy(struct callback_ctx *ctx)
{
    vlc_vector_destroy(&ctx->vec_items_reset);
    vlc_vector_destroy(&ctx->vec_items_added);
    vlc_vector_destroy(&ctx->vec_items_moved);
    vlc_vector_destroy(&ctx->vec_items_removed);
    vlc_vector_destroy(&ctx->vec_playback_repeat_changed);
    vlc_vector_destroy(&ctx->vec_playback_order_changed);
    vlc_vector_destroy(&ctx->vec_current_index_changed);
    vlc_vector_destroy(&ctx->vec_has_prev_changed);
    vlc_vector_destroy(&ctx->vec_has_next_changed);
}
