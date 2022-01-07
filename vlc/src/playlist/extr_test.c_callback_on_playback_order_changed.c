
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct playback_order_changed_report {int order; } ;
struct callback_ctx {int vec_playback_order_changed; } ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;


 int VLC_UNUSED (int *) ;
 int vlc_vector_push (int *,struct playback_order_changed_report) ;

__attribute__((used)) static void
callback_on_playback_order_changed(vlc_playlist_t *playlist,
                                   enum vlc_playlist_playback_order order,
                                   void *userdata)
{
    VLC_UNUSED(playlist);
    struct callback_ctx *ctx = userdata;

    struct playback_order_changed_report report;
    report.order = order;
    vlc_vector_push(&ctx->vec_playback_order_changed, report);
}
