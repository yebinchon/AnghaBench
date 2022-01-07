
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;


 int ** vlc_player_osd_HoldAll (int *,size_t*) ;
 int vlc_player_osd_ReleaseAll (int *,int **,size_t) ;
 int vouts_osd_Icon (int **,size_t,short) ;

void
vlc_player_osd_Icon(vlc_player_t *player, short type)
{
    size_t count;
    vout_thread_t **vouts = vlc_player_osd_HoldAll(player, &count);

    vouts_osd_Icon(vouts, count, type);

    vlc_player_osd_ReleaseAll(player, vouts, count);
}
