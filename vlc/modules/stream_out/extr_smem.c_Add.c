
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sout_stream_t ;
typedef void sout_stream_id_sys_t ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
typedef TYPE_1__ es_format_t ;


 scalar_t__ AUDIO_ES ;
 void* AddAudio (int *,TYPE_1__ const*) ;
 void* AddVideo (int *,TYPE_1__ const*) ;
 scalar_t__ VIDEO_ES ;

__attribute__((used)) static void *Add( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_id_sys_t *id = ((void*)0);

    if ( p_fmt->i_cat == VIDEO_ES )
        id = AddVideo( p_stream, p_fmt );
    else if ( p_fmt->i_cat == AUDIO_ES )
        id = AddAudio( p_stream, p_fmt );
    return id;
}
