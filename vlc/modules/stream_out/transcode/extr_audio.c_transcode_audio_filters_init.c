
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_3__ {scalar_t__ psz_filters; } ;
typedef TYPE_1__ sout_filters_config_t ;
typedef int audio_format_t ;
typedef int aout_filters_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_STRING ;
 int * aout_FiltersNew (int *,int const*,int const*,int *) ;
 int var_Create (int *,char*,int ) ;
 int var_Destroy (int *,char*) ;
 int var_SetString (int *,char*,scalar_t__) ;

__attribute__((used)) static int transcode_audio_filters_init( sout_stream_t *p_stream,
                                         const sout_filters_config_t *p_cfg,
                                         const audio_format_t *p_dec_out,
                                         const audio_format_t *p_enc_in,
                                         aout_filters_t **pp_chain )
{


    var_Create( p_stream, "audio-time-stretch", VLC_VAR_BOOL );
    var_Create( p_stream, "audio-filter", VLC_VAR_STRING );
    if( p_cfg->psz_filters )
        var_SetString( p_stream, "audio-filter", p_cfg->psz_filters );
    *pp_chain = aout_FiltersNew( p_stream, p_dec_out, p_enc_in, ((void*)0) );
    var_Destroy( p_stream, "audio-filter" );
    var_Destroy( p_stream, "audio-time-stretch" );
    return ( *pp_chain != ((void*)0) ) ? VLC_SUCCESS : VLC_EGENERIC;
}
