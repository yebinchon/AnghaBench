
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct playback_repeat_changed_report {int repeat; } ;
struct callback_ctx {int vec_playback_repeat_changed; } ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;


 int VLC_UNUSED (int *) ;
 int vlc_vector_push (int *,struct playback_repeat_changed_report) ;

__attribute__((used)) static void
callback_on_playback_repeat_changed(vlc_playlist_t *playlist,
                                    enum vlc_playlist_playback_repeat repeat,
                                    void *userdata)
{
    VLC_UNUSED(playlist);
    struct callback_ctx *ctx = userdata;

    struct playback_repeat_changed_report report;
    report.repeat = repeat;
    vlc_vector_push(&ctx->vec_playback_repeat_changed, report);
}
