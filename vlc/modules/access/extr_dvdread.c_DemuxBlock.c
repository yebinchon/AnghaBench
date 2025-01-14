
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_13__ {int es; int i_skip; int b_configured; } ;
typedef TYPE_1__ ps_track_t ;
struct TYPE_14__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_15__ {int i_mux_rate; TYPE_1__* tk; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;


 int ESNew (TYPE_2__*,int,int ) ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 TYPE_4__* block_Alloc (int) ;
 int block_Release (TYPE_4__*) ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 int memcpy (int ,int const*,int) ;
 int msg_Warn (TYPE_2__*,char*) ;
 size_t ps_id_to_tk (int) ;
 int ps_pkt_id (int ,int ) ;
 int ps_pkt_parse_pack (int ,int ,scalar_t__*,int*) ;
 int ps_pkt_parse_pes (int ,TYPE_4__*,int ) ;
 int ps_pkt_size (int const*,int) ;

__attribute__((used)) static int DemuxBlock( demux_t *p_demux, const uint8_t *p, int len )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    while( len > 0 )
    {
        int i_size = ps_pkt_size( p, len );
        if( i_size <= 0 || i_size > len )
        {
            break;
        }


        block_t *p_pkt = block_Alloc( i_size );
        memcpy( p_pkt->p_buffer, p, i_size);


        switch( 0x100 | p[3] )
        {
        case 0x1b9:
        case 0x1bb:
        case 0x1bc:
            block_Release( p_pkt );
            break;

        case 0x1ba:
        {
            vlc_tick_t i_scr;
            int i_mux_rate;
            if( !ps_pkt_parse_pack( p_pkt->p_buffer, p_pkt->i_buffer,
                                    &i_scr, &i_mux_rate ) )
            {
                es_out_SetPCR( p_demux->out, VLC_TICK_0 + i_scr );
                if( i_mux_rate > 0 ) p_sys->i_mux_rate = i_mux_rate;
            }
            block_Release( p_pkt );
            break;
        }
        default:
        {
            int i_id = ps_pkt_id( p_pkt->p_buffer, p_pkt->i_buffer );
            if( i_id >= 0xc0 )
            {
                ps_track_t *tk = &p_sys->tk[ps_id_to_tk(i_id)];

                if( !tk->b_configured )
                {
                    ESNew( p_demux, i_id, 0 );
                }
                if( tk->es &&
                    !ps_pkt_parse_pes( VLC_OBJECT(p_demux), p_pkt, tk->i_skip ) )
                {
                    es_out_Send( p_demux->out, tk->es, p_pkt );
                }
                else
                {
                    block_Release( p_pkt );
                }
            }
            else
            {
                block_Release( p_pkt );
            }
            break;
        }
        }

        p += i_size;
        len -= i_size;
    }

    return VLC_SUCCESS;
}
