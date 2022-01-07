
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
struct items_reset_report {size_t count; int state; } ;
struct callback_ctx {int vec_items_reset; } ;


 int VLC_UNUSED (int * const*) ;
 int playlist_state_init (int *,int *) ;
 int vlc_vector_push (int *,struct items_reset_report) ;

__attribute__((used)) static void
callback_on_items_reset(vlc_playlist_t *playlist,
                        vlc_playlist_item_t *const items[], size_t count,
                        void *userdata)
{
    VLC_UNUSED(items);
    struct callback_ctx *ctx = userdata;

    struct items_reset_report report;
    report.count = count;
    playlist_state_init(&report.state, playlist);
    vlc_vector_push(&ctx->vec_items_reset, report);
}
