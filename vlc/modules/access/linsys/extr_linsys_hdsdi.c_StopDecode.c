
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_channel; int * p_es; } ;
typedef TYPE_1__ hdsdi_audio_t ;
struct TYPE_6__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {TYPE_1__* p_audios; int * p_es_video; } ;
typedef TYPE_3__ demux_sys_t ;


 int MAX_AUDIOS ;
 int es_out_Del (int ,int *) ;

__attribute__((used)) static void StopDecode( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    es_out_Del( p_demux->out, p_sys->p_es_video );

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        hdsdi_audio_t *p_audio = &p_sys->p_audios[i];
        if ( p_audio->i_channel != -1 && p_audio->p_es != ((void*)0) )
        {
            es_out_Del( p_demux->out, p_audio->p_es );
            p_audio->p_es = ((void*)0);
        }
    }
}
