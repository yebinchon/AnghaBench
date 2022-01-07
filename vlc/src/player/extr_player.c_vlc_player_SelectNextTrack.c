
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int vlc_player_CycleTrack (int *,int,int) ;

void
vlc_player_SelectNextTrack(vlc_player_t *player,
                           enum es_format_category_e cat)
{
    vlc_player_CycleTrack(player, cat, 1);
}
