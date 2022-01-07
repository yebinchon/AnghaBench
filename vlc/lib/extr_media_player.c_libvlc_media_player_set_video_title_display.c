
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t libvlc_position_t ;
typedef int libvlc_media_player_t ;


 int assert (int) ;
 size_t libvlc_position_bottom_right ;
 size_t libvlc_position_disable ;
 unsigned int* position_subpicture_alignment ;
 int var_SetBool (int *,char*,int) ;
 int var_SetInteger (int *,char*,unsigned int) ;

void libvlc_media_player_set_video_title_display( libvlc_media_player_t *p_mi, libvlc_position_t position, unsigned timeout )
{
    assert( position >= libvlc_position_disable && position <= libvlc_position_bottom_right );

    if ( position != libvlc_position_disable )
    {
        var_SetBool( p_mi, "video-title-show", 1 );
        var_SetInteger( p_mi, "video-title-position", position_subpicture_alignment[position] );
        var_SetInteger( p_mi, "video-title-timeout", timeout );
    }
    else
    {
        var_SetBool( p_mi, "video-title-show", 0 );
    }
}
