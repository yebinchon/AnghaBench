
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int * GetVout (int *,unsigned int) ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_STRING ;
 int assert (char const*) ;
 int var_Create (int *,char*,int ) ;
 int var_SetInteger (int *,char*,unsigned int) ;
 int var_SetString (int *,char*,char const*) ;
 int var_TriggerCallback (int *,char*) ;
 int vout_Release (int *) ;

int
libvlc_video_take_snapshot( libvlc_media_player_t *p_mi, unsigned num,
                            const char *psz_filepath,
                            unsigned int i_width, unsigned int i_height )
{
    assert( psz_filepath );

    vout_thread_t *p_vout = GetVout (p_mi, num);
    if (p_vout == ((void*)0))
        return -1;





    var_Create( p_vout, "snapshot-width", VLC_VAR_INTEGER );
    var_SetInteger( p_vout, "snapshot-width", i_width);
    var_Create( p_vout, "snapshot-height", VLC_VAR_INTEGER );
    var_SetInteger( p_vout, "snapshot-height", i_height );
    var_Create( p_vout, "snapshot-path", VLC_VAR_STRING );
    var_SetString( p_vout, "snapshot-path", psz_filepath );
    var_Create( p_vout, "snapshot-format", VLC_VAR_STRING );
    var_SetString( p_vout, "snapshot-format", "png" );
    var_TriggerCallback( p_vout, "video-snapshot" );
    vout_Release(p_vout);
    return 0;
}
