
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {size_t i_extra; int p_extra; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_12__ {int out; TYPE_3__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_13__ {int * es; } ;
typedef TYPE_3__ demux_sys_t ;


 int Control ;
 int Demux ;
 int MakeExtradata (TYPE_3__*,int *,size_t*) ;
 int ProbeWEBVTT (TYPE_2__*) ;
 int ReadWEBVTT (TYPE_2__*) ;
 int SPU_ES ;
 int VLC_CODEC_WEBVTT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* calloc (int,int) ;
 int es_format_Clean (TYPE_1__*) ;
 int es_format_Init (TYPE_1__*,int ,int ) ;
 int * es_out_Add (int ,TYPE_1__*) ;
 int webvtt_CloseDemux (int *) ;

int webvtt_OpenDemux ( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    int i_ret = ProbeWEBVTT( p_demux );
    if( i_ret != VLC_SUCCESS )
        return i_ret;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    p_demux->p_sys = p_sys = calloc( 1, sizeof( demux_sys_t ) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    if( ReadWEBVTT( p_demux ) != VLC_SUCCESS )
    {
        webvtt_CloseDemux( p_this );
        return VLC_EGENERIC;
    }

    es_format_t fmt;
    es_format_Init( &fmt, SPU_ES, VLC_CODEC_WEBVTT );
    size_t i_extra = 0;
    MakeExtradata( p_sys, &fmt.p_extra, &i_extra );
    fmt.i_extra = i_extra;
    p_sys->es = es_out_Add( p_demux->out, &fmt );
    es_format_Clean( &fmt );
    if( p_sys->es == ((void*)0) )
    {
        webvtt_CloseDemux( p_this );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
