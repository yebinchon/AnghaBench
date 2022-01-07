
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct report_track_selection {int * selected_id; int * unselected_id; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_track_selection) ;
 int assert (int) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_track_selection_changed ;
 int * vlc_es_id_Hold (int *) ;

__attribute__((used)) static void
player_on_track_selection_changed(vlc_player_t *player,
                                  vlc_es_id_t *unselected_id,
                                  vlc_es_id_t *selected_id, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_track_selection report = {
        .unselected_id = unselected_id ? vlc_es_id_Hold(unselected_id) : ((void*)0),
        .selected_id = selected_id ? vlc_es_id_Hold(selected_id) : ((void*)0),
    };
    assert(!!unselected_id == !!report.unselected_id);
    assert(!!selected_id == !!report.selected_id);
    VEC_PUSH(on_track_selection_changed, report);
}
