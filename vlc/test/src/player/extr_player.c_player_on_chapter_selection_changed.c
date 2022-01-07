
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_title {int dummy; } ;
struct vlc_player_chapter {int dummy; } ;
struct report_chapter_selection {size_t title_idx; size_t chapter_idx; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_chapter_selection) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_chapter_selection_changed ;

__attribute__((used)) static void
player_on_chapter_selection_changed(vlc_player_t *player,
                                    const struct vlc_player_title *title,
                                    size_t title_idx,
                                    const struct vlc_player_chapter *chapter,
                                    size_t chapter_idx, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_chapter_selection report = {
        .title_idx = title_idx,
        .chapter_idx = chapter_idx,
    };
    VEC_PUSH(on_chapter_selection_changed, report);
    (void) title;
    (void) chapter;
}
