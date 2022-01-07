
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_2__ {int var; } ;


 int DATA_ES ;
 int UNKNOWN_ES ;
 int assert (int) ;
 TYPE_1__* cat2vars ;
 int var_GetBool (int *,int ) ;

bool
vlc_player_IsTrackCategoryEnabled(vlc_player_t *player,
                                  enum es_format_category_e cat)
{
    assert(cat >= UNKNOWN_ES && cat <= DATA_ES);
    return var_GetBool(player, cat2vars[cat].var);
}
