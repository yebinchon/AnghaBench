
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_10__ {int p_resource; int b_video; int b_audio; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_11__ {scalar_t__ i_cat; int i_codec; } ;
typedef TYPE_3__ es_format_t ;
typedef void decoder_t ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ VIDEO_ES ;
 int VLC_OBJECT (TYPE_1__*) ;
 void* input_DecoderCreate (int ,TYPE_3__ const*,int ) ;
 int msg_Err (TYPE_1__*,char*,char*) ;

__attribute__((used)) static void *Add( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( ( p_fmt->i_cat == AUDIO_ES && !p_sys->b_audio )||
        ( p_fmt->i_cat == VIDEO_ES && !p_sys->b_video ) )
    {
        return ((void*)0);
    }

    decoder_t *p_dec = input_DecoderCreate( VLC_OBJECT(p_stream), p_fmt,
                                            p_sys->p_resource );
    if( p_dec == ((void*)0) )
    {
        msg_Err( p_stream, "cannot create decoder for fcc=`%4.4s'",
                 (char*)&p_fmt->i_codec );
        return ((void*)0);
    }
    return p_dec;
}
