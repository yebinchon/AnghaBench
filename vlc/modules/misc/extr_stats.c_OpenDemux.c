
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {char* psz_name; int out; TYPE_3__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {int i_width; int i_height; } ;
struct TYPE_11__ {TYPE_1__ video; } ;
struct TYPE_10__ {TYPE_6__ fmt; int p_es; int pts; } ;
typedef TYPE_3__ demux_sys_t ;


 int Demux ;
 int DemuxControl ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_FOURCC (char,char,char,char) ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (TYPE_6__*,int ,int ) ;
 int es_out_Add (int ,TYPE_6__*) ;
 TYPE_3__* malloc (int) ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static int OpenDemux ( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    p_demux->p_sys = ((void*)0);


    if( *p_demux->psz_name == '\0' )
        return VLC_EGENERIC;

    msg_Dbg( p_demux, "Init Stat demux" );

    p_demux->pf_demux = Demux;
    p_demux->pf_control = DemuxControl;

    p_demux->p_sys = p_sys = malloc( sizeof( demux_sys_t ) );
    if( !p_demux->p_sys )
        return VLC_ENOMEM;

    date_Init( &p_sys->pts, 1, 1 );
    date_Set( &p_sys->pts, VLC_TICK_0 );

    es_format_Init( &p_sys->fmt, VIDEO_ES, VLC_FOURCC('s','t','a','t') );
    p_sys->fmt.video.i_width = 720;
    p_sys->fmt.video.i_height= 480;

    p_sys->p_es = es_out_Add( p_demux->out, &p_sys->fmt );

    return VLC_SUCCESS;
}
