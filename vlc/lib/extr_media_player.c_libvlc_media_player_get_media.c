
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_3__ {int player; int * p_md; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int libvlc_media_retain (int *) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_Unlock (int ) ;

libvlc_media_t *
libvlc_media_player_get_media( libvlc_media_player_t *p_mi )
{
    libvlc_media_t *p_m;

    vlc_player_Lock(p_mi->player);
    p_m = p_mi->p_md;
    if( p_m )
        libvlc_media_retain( p_m );
    vlc_player_Unlock(p_mi->player);

    return p_m;
}
