
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_22__ {int i_saved; scalar_t__ i_data_size; int* saved; scalar_t__ i_gathered; int * p_data; } ;
struct TYPE_23__ {int b_broken_PUSI_conformance; TYPE_3__ gather; TYPE_2__* p_es; } ;
typedef TYPE_4__ ts_stream_t ;
struct TYPE_20__ {TYPE_4__* p_stream; } ;
struct TYPE_24__ {TYPE_1__ u; } ;
typedef TYPE_5__ ts_pid_t ;
struct TYPE_25__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ demux_t ;
struct TYPE_26__ {scalar_t__ b_valid_scrambling; } ;
typedef TYPE_7__ demux_sys_t ;
struct TYPE_27__ {int* p_buffer; size_t i_buffer; int i_flags; } ;
typedef TYPE_8__ block_t ;
struct TYPE_21__ {int i_next_block_flags; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_SCRAMBLED ;
 int BLOCK_FLAG_SOURCE_RANDOM_ACCESS ;
 int* FindNextPESHeader (int*,int) ;
 scalar_t__ GetWBE (int*) ;
 scalar_t__ MayHaveStartCodeOnEnd (int*,int) ;
 int PushPESBlock (TYPE_6__*,TYPE_5__*,TYPE_8__*,int const) ;
 int assert (int) ;
 TYPE_8__* block_Realloc (TYPE_8__*,int,size_t) ;
 int block_Release (TYPE_8__*) ;
 int block_Split (TYPE_8__**,TYPE_8__**,size_t const) ;
 scalar_t__ likely (int) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int memcpy (int*,int*,int) ;
 int pes_sync ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool GatherPESData( demux_t *p_demux, ts_pid_t *pid, block_t *p_pkt, size_t i_skip )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    const bool b_unit_start = p_pkt->p_buffer[1]&0x40;
    bool b_ret = 0;
    ts_stream_t *p_pes = pid->u.p_stream;


    p_pkt->p_buffer += i_skip;
    p_pkt->i_buffer -= i_skip;

    bool b_single_payload = b_unit_start;
    bool b_aligned_ts_payload = 1;

    if( unlikely(p_pes->b_broken_PUSI_conformance) )
    {


        b_aligned_ts_payload = 0;
        b_single_payload = 0;

    }


    if( (p_pkt->i_flags & BLOCK_FLAG_SCRAMBLED) && p_sys->b_valid_scrambling )
    {
        block_Release( p_pkt );
        return PushPESBlock( p_demux, pid, ((void*)0), 1 );
    }



    if( p_pkt->i_flags & BLOCK_FLAG_SOURCE_RANDOM_ACCESS )
    {
        p_pes->gather.i_saved = 0;

        b_ret |= PushPESBlock( p_demux, pid, ((void*)0), 1 );

        if( p_pes->p_es )
            p_pes->p_es->i_next_block_flags |= BLOCK_FLAG_DISCONTINUITY;
    }

    else if( p_pkt->i_flags & BLOCK_FLAG_DISCONTINUITY )
    {

        p_pes->gather.i_data_size = 0;

        p_pes->gather.i_saved = 0;

        if( p_pes->p_es )
            p_pes->p_es->i_next_block_flags |= BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED;
    }

    if ( unlikely(p_pes->gather.i_saved > 0) )
    {

        assert(p_pes->gather.i_saved < 6);
        if( !b_aligned_ts_payload )
        {
            p_pkt = block_Realloc( p_pkt, p_pes->gather.i_saved, p_pkt->i_buffer );
            if( p_pkt )
                memcpy( p_pkt->p_buffer, p_pes->gather.saved, p_pes->gather.i_saved );
        }
        p_pes->gather.i_saved = 0;
    }

    for( bool b_first_sync_done = 0; p_pkt; )
    {
        assert( p_pes->gather.i_saved == 0 );

        if( p_pes->gather.p_data == ((void*)0) && !b_first_sync_done && p_pkt->i_buffer >= 6 )
        {
            if( likely(b_aligned_ts_payload) )
            {
                if( memcmp( p_pkt->p_buffer, pes_sync, 3 ) )
                {
                    block_Release( p_pkt );
                    return b_ret;
                }
            }
            else
            {

                uint8_t *p_buf = FindNextPESHeader( p_pkt->p_buffer, p_pkt->i_buffer - 3 );
                if( p_buf == ((void*)0) )
                {

                    if( MayHaveStartCodeOnEnd( p_pkt->p_buffer, p_pkt->i_buffer ) )
                    {

                        p_pkt->p_buffer += p_pkt->i_buffer - 3;
                        p_pes->gather.i_saved = p_pkt->i_buffer = 3;
                        memcpy(p_pes->gather.saved, p_pkt->p_buffer, p_pkt->i_buffer);
                    }
                    block_Release( p_pkt );
                    return b_ret;
                }
                p_pkt->i_buffer -= p_buf - p_pkt->p_buffer;
                p_pkt->p_buffer = p_buf;
            }

            p_pes->gather.i_data_size = GetWBE(&p_pkt->p_buffer[4]);
            if( p_pes->gather.i_data_size > 0 )
                p_pes->gather.i_data_size += 6;
            b_first_sync_done = 1;
        }
        else
        {
            assert( p_pes->gather.i_data_size > p_pes->gather.i_gathered ||
                    p_pes->gather.i_data_size == 0 );


            if( p_pes->gather.i_data_size > p_pes->gather.i_gathered )
            {
                const size_t i_remain = p_pes->gather.i_data_size - p_pes->gather.i_gathered;

                if( likely(p_pkt->i_buffer <= i_remain || b_single_payload) )
                {
                    b_ret |= PushPESBlock( p_demux, pid, p_pkt, p_pes->gather.p_data == ((void*)0) );
                    p_pkt = ((void*)0);
                }
                else
                {
                    block_t *p_split;
                    if( !block_Split( &p_pkt, &p_split, i_remain ) )
                    {
                        block_Release( p_pkt );
                        return 0;
                    }
                    b_ret |= PushPESBlock( p_demux, pid, p_pkt, p_pes->gather.p_data == ((void*)0) );
                    p_pkt = p_split;
                    b_first_sync_done = 0;
                }
            }
            else
            {

                b_ret |= PushPESBlock( p_demux, pid, p_pkt, b_unit_start );
                p_pkt = ((void*)0);
            }
        }

        if( unlikely(p_pkt && p_pkt->i_buffer < 6) )
        {

            assert(!b_single_payload);
            assert(p_pes->gather.i_saved == 0);
            p_pes->gather.i_saved = p_pkt->i_buffer;
            memcpy(p_pes->gather.saved, p_pkt->p_buffer, p_pkt->i_buffer);
            block_Release( p_pkt );
            p_pkt = ((void*)0);
        }
    }

    return b_ret;
}
