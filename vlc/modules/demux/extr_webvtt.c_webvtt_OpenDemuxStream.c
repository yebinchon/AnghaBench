
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int es_format_t ;
struct TYPE_6__ {int out; TYPE_2__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int * es; int p_streamparser; } ;
typedef TYPE_2__ demux_sys_t ;


 int ControlStream ;
 int DemuxStream ;
 int ProbeWEBVTT (TYPE_1__*) ;
 int SPU_ES ;
 int StreamParserCueDoneHandler ;
 int StreamParserGetCueHandler ;
 int VLC_CODEC_WEBVTT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_2__* calloc (int,int) ;
 int es_format_Clean (int *) ;
 int es_format_Init (int *,int ,int ) ;
 int * es_out_Add (int ,int *) ;
 int webvtt_CloseDemux (int *) ;
 int webvtt_text_parser_New (TYPE_1__*,int ,int ,int *) ;

int webvtt_OpenDemuxStream ( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    int i_ret = ProbeWEBVTT( p_demux );
    if( i_ret != VLC_SUCCESS )
        return i_ret;

    p_demux->pf_demux = DemuxStream;
    p_demux->pf_control = ControlStream;

    p_demux->p_sys = p_sys = calloc( 1, sizeof( demux_sys_t ) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    p_sys->p_streamparser = webvtt_text_parser_New( p_demux,
                                          StreamParserGetCueHandler,
                                          StreamParserCueDoneHandler,
                                          ((void*)0) );
    if( !p_sys->p_streamparser )
    {
        webvtt_CloseDemux( p_this );
        return VLC_EGENERIC;
    }

    es_format_t fmt;
    es_format_Init( &fmt, SPU_ES, VLC_CODEC_WEBVTT );
    p_sys->es = es_out_Add( p_demux->out, &fmt );
    es_format_Clean( &fmt );
    if( p_sys->es == ((void*)0) )
    {
        webvtt_CloseDemux( p_this );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
