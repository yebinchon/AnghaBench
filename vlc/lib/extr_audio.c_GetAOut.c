
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef int audio_output_t ;


 int assert (int ) ;
 int libvlc_printerr (char*) ;
 int * vlc_player_aout_Hold (int ) ;

__attribute__((used)) static audio_output_t *GetAOut( libvlc_media_player_t *mp )
{
    assert( mp != ((void*)0) );

    audio_output_t *p_aout = vlc_player_aout_Hold(mp->player);
    if( p_aout == ((void*)0) )
        libvlc_printerr( "No active audio output" );
    return p_aout;
}
