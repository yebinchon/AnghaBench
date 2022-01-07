
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {TYPE_3__* p_sys; int pf_control; int pf_demux; int out; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_9__ {int i_width; int i_height; int i_visible_width; int i_visible_height; } ;
struct TYPE_12__ {TYPE_1__ video; } ;
struct TYPE_11__ {int pts; int * p_es; TYPE_5__ fmt; } ;
typedef TYPE_3__ demux_sys_t ;


 int CDG_FRAME_RATE ;
 int Control ;
 int Demux ;
 int VIDEO_ES ;
 int VLC_CODEC_CDG ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int date_Init (int *,int ,int) ;
 int date_Set (int *,int ) ;
 int demux_IsForced (TYPE_2__*,char*) ;
 int demux_IsPathExtension (TYPE_2__*,char*) ;
 int es_format_Init (TYPE_5__*,int ,int ) ;
 int * es_out_Add (int ,TYPE_5__*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_3__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;



    if( !demux_IsPathExtension( p_demux, ".cdg" ) && !demux_IsForced( p_demux, "cdg" ) )
        return VLC_EGENERIC;
    demux_sys_t *p_sys = vlc_obj_malloc( p_this, sizeof (*p_sys) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    es_format_Init( &p_sys->fmt, VIDEO_ES, VLC_CODEC_CDG );
    p_sys->fmt.video.i_width = 300-2*6;
    p_sys->fmt.video.i_height = 216-2*12 ;
    p_sys->fmt.video.i_visible_width = p_sys->fmt.video.i_width;
    p_sys->fmt.video.i_visible_height = p_sys->fmt.video.i_height;

    p_sys->p_es = es_out_Add( p_demux->out, &p_sys->fmt );
    if( unlikely(p_sys->p_es == ((void*)0)) )
        return VLC_ENOMEM;


    date_Init( &p_sys->pts, CDG_FRAME_RATE, 1 );
    date_Set( &p_sys->pts, VLC_TICK_0 );

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys;
    return VLC_SUCCESS;
}
