
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_13__ {scalar_t__ i_dts_start; size_t i_size; scalar_t__ b_drop; int p_out; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_14__ {int b_wait_key; int b_wait_start; int pp_last; int id; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;
struct TYPE_15__ {int i_flags; scalar_t__ i_dts; } ;
typedef TYPE_4__ block_t ;


 int BLOCK_FLAG_TYPE_I ;
 int BLOCK_FLAG_TYPE_MASK ;
 int block_ChainLastAppend (int *,TYPE_4__*) ;
 int block_ChainProperties (TYPE_4__*,int *,size_t*,int *) ;
 int block_ChainRelease (TYPE_4__*) ;
 int sout_StreamIdSend (int ,int ,TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void OutputSend( sout_stream_t *p_stream, sout_stream_id_sys_t *id, block_t *p_block )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( id->id )
    {


        if( unlikely( id->b_wait_key ) )
        {
            if( p_block->i_flags & BLOCK_FLAG_TYPE_I )
            {
                id->b_wait_key = 0;
                id->b_wait_start = 0;
            }

            if( ( p_block->i_flags & BLOCK_FLAG_TYPE_MASK ) == 0 )
                id->b_wait_key = 0;
        }
        if( unlikely( id->b_wait_start ) )
        {
            if( p_block->i_dts >=p_sys->i_dts_start )
                id->b_wait_start = 0;
        }
        if( unlikely( id->b_wait_key || id->b_wait_start ) )
            block_ChainRelease( p_block );
        else
            sout_StreamIdSend( p_sys->p_out, id->id, p_block );
    }
    else if( p_sys->b_drop )
    {
        block_ChainRelease( p_block );
    }
    else
    {
        size_t i_size;

        block_ChainProperties( p_block, ((void*)0), &i_size, ((void*)0) );
        p_sys->i_size += i_size;
        block_ChainLastAppend( &id->pp_last, p_block );
    }
}
