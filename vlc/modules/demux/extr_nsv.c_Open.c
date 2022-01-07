
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_6__ {int force; } ;
struct TYPE_7__ {int pf_control; int pf_demux; TYPE_3__* p_sys; TYPE_1__ obj; int s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {int b_start_record; scalar_t__ i_pcr_inc; scalar_t__ i_time; scalar_t__ i_pcr; int * p_sub; int fmt_sub; int * p_video; int fmt_video; int * p_audio; int fmt_audio; } ;
typedef TYPE_3__ demux_sys_t ;


 int AUDIO_ES ;
 int Control ;
 int Demux ;
 scalar_t__ ReSynch (TYPE_2__*) ;
 int SPU_ES ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Init (int *,int ,int ) ;
 TYPE_3__* malloc (int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 8 ) < 8 )
        return VLC_EGENERIC;

    if( memcmp( p_peek, "NSVf", 4 ) && memcmp( p_peek, "NSVs", 4 ) )
    {

        if( !p_demux->obj.force || ReSynch( p_demux ) )
            return VLC_EGENERIC;
    }

    p_sys = malloc( sizeof( demux_sys_t ) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;


    p_demux->p_sys = p_sys;
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    es_format_Init( &p_sys->fmt_audio, AUDIO_ES, 0 );
    p_sys->p_audio = ((void*)0);

    es_format_Init( &p_sys->fmt_video, VIDEO_ES, 0 );
    p_sys->p_video = ((void*)0);

    es_format_Init( &p_sys->fmt_sub, SPU_ES, 0 );
    p_sys->p_sub = ((void*)0);

    p_sys->i_pcr = 0;
    p_sys->i_time = 0;
    p_sys->i_pcr_inc = 0;

    p_sys->b_start_record = 0;

    return VLC_SUCCESS;
}
