
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int p_input_item; int p_libvlc_instance; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_11__ {TYPE_1__* p_md; int player; } ;
typedef TYPE_2__ libvlc_media_player_t ;


 int VLC_SUCCESS ;
 TYPE_2__* libvlc_media_player_new (int ) ;
 int libvlc_media_release (TYPE_1__*) ;
 int libvlc_media_retain (TYPE_1__*) ;
 int media_attach_preparsed_event (TYPE_1__*) ;
 int media_detach_preparsed_event (TYPE_1__*) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_SetCurrentMedia (int ,int ) ;
 int vlc_player_Unlock (int ) ;

libvlc_media_player_t *
libvlc_media_player_new_from_media( libvlc_media_t * p_md )
{
    libvlc_media_player_t * p_mi;

    p_mi = libvlc_media_player_new( p_md->p_libvlc_instance );
    if( !p_mi )
        return ((void*)0);

    libvlc_media_retain( p_md );
    p_mi->p_md = p_md;
    media_attach_preparsed_event(p_md);

    vlc_player_Lock(p_mi->player);
    int ret = vlc_player_SetCurrentMedia(p_mi->player, p_md->p_input_item);
    vlc_player_Unlock(p_mi->player);

    if (ret != VLC_SUCCESS)
    {
        media_detach_preparsed_event(p_md);
        libvlc_media_release(p_md);
        p_mi->p_md = ((void*)0);
        return ((void*)0);
    }

    return p_mi;
}
