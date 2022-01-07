
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int player; int i_refcount; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int assert (TYPE_1__*) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_Unlock (int ) ;

void libvlc_media_player_retain( libvlc_media_player_t *p_mi )
{
    assert( p_mi );

    vlc_player_Lock(p_mi->player);
    p_mi->i_refcount++;
    vlc_player_Unlock(p_mi->player);
}
