
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct current_index_changed_report {int current; } ;
struct callback_ctx {int vec_current_index_changed; } ;
typedef int ssize_t ;


 int VLC_UNUSED (int *) ;
 int vlc_vector_push (int *,struct current_index_changed_report) ;

__attribute__((used)) static void
callback_on_current_index_changed(vlc_playlist_t *playlist, ssize_t index,
                                  void *userdata)
{
    VLC_UNUSED(playlist);
    struct callback_ctx *ctx = userdata;

    struct current_index_changed_report report;
    report.current = index;
    vlc_vector_push(&ctx->vec_current_index_changed, report);
}
