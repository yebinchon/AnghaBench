
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int p_libvlc_instance; int p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_10__ {int player; int p_libvlc_instance; TYPE_1__* p_md; } ;
typedef TYPE_2__ libvlc_media_player_t ;


 int libvlc_media_release (TYPE_1__*) ;
 int libvlc_media_retain (TYPE_1__*) ;
 int media_attach_preparsed_event (TYPE_1__*) ;
 int media_detach_preparsed_event (TYPE_1__*) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_SetCurrentMedia (int ,int ) ;
 int vlc_player_Unlock (int ) ;

void libvlc_media_player_set_media(
                            libvlc_media_player_t *p_mi,
                            libvlc_media_t *p_md )
{
    vlc_player_Lock(p_mi->player);

    if (p_mi->p_md)
        media_detach_preparsed_event(p_mi->p_md);

    libvlc_media_release( p_mi->p_md );

    if( p_md )
    {
        libvlc_media_retain( p_md );
        media_attach_preparsed_event(p_md);
    }
    p_mi->p_md = p_md;

    vlc_player_SetCurrentMedia(p_mi->player, p_md->p_input_item);



    p_mi->p_libvlc_instance = p_md->p_libvlc_instance;

    vlc_player_Unlock(p_mi->player);
}
