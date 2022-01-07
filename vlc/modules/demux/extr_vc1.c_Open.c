
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int es_format_t ;
struct TYPE_10__ {int force; } ;
struct TYPE_11__ {TYPE_3__* p_sys; int pf_control; int pf_demux; TYPE_1__ obj; int s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_12__ {float f_fps; int p_packetizer; scalar_t__ i_dts; int * p_es; } ;
typedef TYPE_3__ demux_sys_t ;


 int Control ;
 int Demux ;
 int VIDEO_ES ;
 int VLC_CODEC_VC1 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int demux_PacketizerNew (TYPE_2__*,int *,char*) ;
 int es_format_Init (int *,int ,int ) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 scalar_t__ unlikely (int ) ;
 float var_CreateGetFloat (TYPE_2__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    const uint8_t *p_peek;
    es_format_t fmt;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 4 ) < 4 ) return VLC_EGENERIC;

    if( p_peek[0] != 0x00 || p_peek[1] != 0x00 ||
        p_peek[2] != 0x01 || p_peek[3] != 0x0f )
    {
        if( !p_demux->obj.force )
        {
            msg_Warn( p_demux, "vc-1 module discarded (no startcode)" );
            return VLC_EGENERIC;
        }

        msg_Err( p_demux, "this doesn't look like a VC-1 ES stream, "
                 "continuing anyway" );
    }

    p_sys = malloc( sizeof( demux_sys_t ) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_demux->pf_demux = Demux;
    p_demux->pf_control= Control;
    p_demux->p_sys = p_sys;
    p_sys->p_es = ((void*)0);
    p_sys->i_dts = 0;
    p_sys->f_fps = var_CreateGetFloat( p_demux, "vc1-fps" );
    if( p_sys->f_fps < 0.001f )
        p_sys->f_fps = 0.0f;


    es_format_Init( &fmt, VIDEO_ES, VLC_CODEC_VC1 );
    p_sys->p_packetizer = demux_PacketizerNew( p_demux, &fmt, "VC-1" );
    if( !p_sys->p_packetizer )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
