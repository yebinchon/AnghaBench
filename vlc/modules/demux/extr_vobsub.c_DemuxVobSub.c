
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int i_track_id; scalar_t__ p_es; } ;
typedef TYPE_1__ vobsub_track_t ;
typedef int uint8_t ;
struct TYPE_14__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_15__ {int i_tracks; TYPE_1__* track; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int* p_buffer; size_t i_buffer; int i_pts; scalar_t__ i_length; int i_dts; } ;
typedef TYPE_4__ block_t ;


 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 TYPE_4__* block_Alloc (int) ;
 int block_Release (TYPE_4__*) ;
 int es_out_Send (int ,scalar_t__,TYPE_4__*) ;
 int memcpy (int*,int*,int) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int ps_pkt_id (int*,int) ;
 scalar_t__ ps_pkt_parse_pes (int ,TYPE_4__*,int) ;
 int ps_pkt_size (int*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DemuxVobSub( demux_t *p_demux, block_t *p_bk )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    uint8_t *p = p_bk->p_buffer;
    uint8_t *p_end = &p_bk->p_buffer[p_bk->i_buffer];
    int i;

    while( p + 6 < p_end )
    {
        int i_size = ps_pkt_size( p, p_end - p );
        block_t *p_pkt;
        int i_id = 0;
        int i_spu;

        if( i_size <= 0 )
            break;

        if( i_size > p_end - p )
        {
            msg_Warn( p_demux, "broken PES size" );
            break;
        }

        if( p[0] != 0 || p[1] != 0 || p[2] != 0x01 )
        {
            msg_Warn( p_demux, "invalid PES" );
            break;
        }

        i_id = ps_pkt_id( p, i_size );
        if( (i_id&0xffe0) != 0xbd20 )
        {

            p += i_size;
            continue;
        }


        p_pkt = block_Alloc( i_size );
        if( unlikely(p_pkt == ((void*)0)) )
            break;
        memcpy( p_pkt->p_buffer, p, i_size);
        p += i_size;

        if( ps_pkt_parse_pes( VLC_OBJECT(p_demux), p_pkt, 1 ) )
        {
            block_Release( p_pkt );
            continue;
        }
        i_spu = i_id&0x1f;


        for( i = 0; i < p_sys->i_tracks; i++ )
        {
            vobsub_track_t *p_tk = &p_sys->track[i];

            p_pkt->i_dts = p_pkt->i_pts = p_bk->i_pts;
            p_pkt->i_length = 0;

            if( p_tk->p_es && p_tk->i_track_id == i_spu )
            {
                es_out_Send( p_demux->out, p_tk->p_es, p_pkt );
                p_bk->i_pts = VLC_TICK_INVALID;
                break;
            }
        }
        if( i >= p_sys->i_tracks )
        {
            block_Release( p_pkt );
        }
    }

    return VLC_SUCCESS;
}
