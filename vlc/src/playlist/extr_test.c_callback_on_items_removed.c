
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct items_removed_report {size_t index; size_t count; int state; } ;
struct callback_ctx {int vec_items_removed; } ;


 int playlist_state_init (int *,int *) ;
 int vlc_vector_push (int *,struct items_removed_report) ;

__attribute__((used)) static void
callback_on_items_removed(vlc_playlist_t *playlist, size_t index, size_t count,
                          void *userdata)
{
    struct callback_ctx *ctx = userdata;

    struct items_removed_report report;
    report.index = index;
    report.count = count;
    playlist_state_init(&report.state, playlist);
    vlc_vector_push(&ctx->vec_items_removed, report);
}
