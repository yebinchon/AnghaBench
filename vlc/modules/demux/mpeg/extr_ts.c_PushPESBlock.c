
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ i_data_size; scalar_t__ i_gathered; TYPE_5__* p_data; TYPE_5__** pp_last; } ;
struct TYPE_16__ {TYPE_2__ gather; } ;
typedef TYPE_3__ ts_stream_t ;
struct TYPE_14__ {TYPE_3__* p_stream; } ;
struct TYPE_17__ {TYPE_1__ u; } ;
typedef TYPE_4__ ts_pid_t ;
typedef int demux_t ;
struct TYPE_18__ {scalar_t__ i_buffer; } ;
typedef TYPE_5__ block_t ;


 int ParsePESDataChain (int *,TYPE_4__*,TYPE_5__*) ;
 int assert (TYPE_5__*) ;
 int block_ChainLastAppend (TYPE_5__***,TYPE_5__*) ;
 int block_Release (TYPE_5__*) ;

__attribute__((used)) static bool PushPESBlock( demux_t *p_demux, ts_pid_t *pid, block_t *p_pkt, bool b_unit_start )
{
    bool b_ret = 0;
    ts_stream_t *p_pes = pid->u.p_stream;

    if ( b_unit_start && p_pes->gather.p_data )
    {
        block_t *p_datachain = p_pes->gather.p_data;

        p_pes->gather.p_data = ((void*)0);
        p_pes->gather.i_data_size = 0;
        p_pes->gather.i_gathered = 0;
        p_pes->gather.pp_last = &p_pes->gather.p_data;
        ParsePESDataChain( p_demux, pid, p_datachain );
        b_ret = 1;
    }

    if( p_pkt == ((void*)0) )
        return b_ret;

    if( !b_unit_start && p_pes->gather.p_data == ((void*)0) )
    {

        block_Release( p_pkt );
        return b_ret;
    }

    block_ChainLastAppend( &p_pes->gather.pp_last, p_pkt );
    p_pes->gather.i_gathered += p_pkt->i_buffer;

    if( p_pes->gather.i_data_size > 0 &&
        p_pes->gather.i_gathered >= p_pes->gather.i_data_size )
    {

        assert(p_pes->gather.p_data);
        return PushPESBlock( p_demux, pid, ((void*)0), 1 );
    }

    return b_ret;
}
