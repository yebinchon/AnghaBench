
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_input {int * thread; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_2__ {int sout_var; int var; } ;


 int DATA_ES ;
 int UNKNOWN_ES ;
 int assert (int) ;
 TYPE_1__* cat2vars ;
 int var_SetBool (int *,int ,int) ;
 int vlc_player_UnselectTrackCategory (int *,int) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

void
vlc_player_SetTrackCategoryEnabled(vlc_player_t *player,
                                   enum es_format_category_e cat, bool enabled)
{
    assert(cat >= UNKNOWN_ES && cat <= DATA_ES);
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    var_SetBool(player, cat2vars[cat].var, enabled);
    var_SetBool(player, cat2vars[cat].sout_var, enabled);

    if (input)
    {
        var_SetBool(input->thread, cat2vars[cat].var, enabled);
        var_SetBool(input->thread, cat2vars[cat].sout_var, enabled);

        if (!enabled)
            vlc_player_UnselectTrackCategory(player, cat);
    }
}
