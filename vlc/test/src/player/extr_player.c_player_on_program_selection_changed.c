
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct report_program_selection {int unselected_id; int selected_id; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_program_selection) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_program_selection_changed ;

__attribute__((used)) static void
player_on_program_selection_changed(vlc_player_t *player,
                                    int unselected_id, int selected_id,
                                    void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_program_selection report = {
        .unselected_id = unselected_id,
        .selected_id = selected_id,
    };
    VEC_PUSH(on_program_selection_changed, report);
}
