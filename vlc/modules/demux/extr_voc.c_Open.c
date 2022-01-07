
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {TYPE_2__* p_sys; int pf_control; int pf_demux; int s; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int fmt; int pts; int * p_es; scalar_t__ i_loop_count; scalar_t__ i_block_end; scalar_t__ i_block_start; scalar_t__ i_silence_countdown; } ;
typedef TYPE_2__ demux_sys_t ;


 int AUDIO_ES ;
 int Control ;
 int Demux ;
 int GetWLE (int const*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int ct_header ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (int *,int ,int ) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int msg_Dbg (TYPE_1__*,char*,int,int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    const uint8_t *p_buf;
    uint16_t i_data_offset, i_version;

    if( vlc_stream_Peek( p_demux->s, &p_buf, 26 ) < 26 )
        return VLC_EGENERIC;

    if( memcmp( p_buf, ct_header, 20 ) )
        return VLC_EGENERIC;
    p_buf += 20;

    i_data_offset = GetWLE( p_buf );
    if ( i_data_offset < 26 )
        return VLC_EGENERIC;
    p_buf += 2;

    i_version = GetWLE( p_buf );
    if( ( i_version != 0x10A ) && ( i_version != 0x114 ) )
        return VLC_EGENERIC;
    p_buf += 2;

    if( GetWLE( p_buf ) != (uint16_t)(0x1234 + ~i_version) )
        return VLC_EGENERIC;


    msg_Dbg( p_demux, "CT Voice file v%d.%d", i_version >> 8,
             i_version & 0xff );


    if( vlc_stream_Read( p_demux->s, ((void*)0), i_data_offset ) < i_data_offset )
        return VLC_EGENERIC;

    demux_sys_t *p_sys = vlc_obj_malloc( p_this, sizeof (*p_sys) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_sys->i_silence_countdown = p_sys->i_block_start = p_sys->i_block_end =
    p_sys->i_loop_count = 0;
    p_sys->p_es = ((void*)0);

    date_Init( &p_sys->pts, 1, 1 );
    date_Set( &p_sys->pts, VLC_TICK_0 );

    es_format_Init( &p_sys->fmt, AUDIO_ES, 0 );
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys;

    return VLC_SUCCESS;
}
