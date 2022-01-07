
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct has_prev_changed_report {int has_prev; } ;
struct callback_ctx {int vec_has_prev_changed; } ;


 int VLC_UNUSED (int *) ;
 int vlc_vector_push (int *,struct has_prev_changed_report) ;

__attribute__((used)) static void
callback_on_has_prev_changed(vlc_playlist_t *playlist, bool has_prev,
                             void *userdata)
{
    VLC_UNUSED(playlist);
    struct callback_ctx *ctx = userdata;

    struct has_prev_changed_report report;
    report.has_prev = has_prev;
    vlc_vector_push(&ctx->vec_has_prev_changed, report);
}
