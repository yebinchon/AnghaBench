
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_10__ {int i_bitspersample; int i_channels; int i_rate; } ;
struct TYPE_11__ {TYPE_1__ audio; } ;
struct TYPE_13__ {int pts; int es; int f; TYPE_2__ fmt; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_14__ {int i_buffer; int i_pts; int i_dts; int p_buffer; } ;
typedef TYPE_5__ block_t ;


 int ModPlug_Read (int ,int ,int) ;
 int VLC_DEMUXER_EGENERIC ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 TYPE_5__* block_Alloc (int) ;
 int block_Release (TYPE_5__*) ;
 int date_Get (int *) ;
 int date_Increment (int *,int const) ;
 int es_out_Send (int ,int ,TYPE_5__*) ;
 int es_out_SetPCR (int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_frame;
    const int i_bk = ( p_sys->fmt.audio.i_bitspersample / 8 ) *
                       p_sys->fmt.audio.i_channels;

    p_frame = block_Alloc( p_sys->fmt.audio.i_rate / 10 * i_bk );
    if( !p_frame )
        return VLC_DEMUXER_EGENERIC;

    const int i_read = ModPlug_Read( p_sys->f, p_frame->p_buffer, p_frame->i_buffer );
    if( i_read <= 0 )
    {

        block_Release( p_frame );
        return VLC_DEMUXER_EOF;
    }
    p_frame->i_buffer = i_read;
    p_frame->i_dts =
    p_frame->i_pts = date_Get( &p_sys->pts );

    es_out_SetPCR( p_demux->out, p_frame->i_pts );
    es_out_Send( p_demux->out, p_sys->es, p_frame );
    date_Increment( &p_sys->pts, i_read / i_bk );
    return VLC_DEMUXER_SUCCESS;
}
