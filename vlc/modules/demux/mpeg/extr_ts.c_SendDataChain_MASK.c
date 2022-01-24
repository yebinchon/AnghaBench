#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int i_next_block_flags; struct TYPE_14__* p_next; scalar_t__ id; struct TYPE_14__* p_extraes; TYPE_1__* p_program; } ;
typedef  TYPE_2__ ts_es_t ;
struct TYPE_15__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_16__ {int i_flags; struct TYPE_16__* p_next; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_13__ {scalar_t__ b_selected; } ;

/* Variables and functions */
 int BLOCK_FLAG_AU_END ; 
 int BLOCK_FLAG_PRIVATE_MASK ; 
 TYPE_4__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*,char*) ; 

__attribute__((used)) static void FUNC4( demux_t *p_demux, ts_es_t *p_es, block_t *p_chain )
{
    bool b_lowdelay = FUNC3(p_demux, "low-delay");
    while( p_chain )
    {
        block_t *p_block = p_chain;
        p_chain = p_block->p_next;
        p_block->p_next = NULL;

        /* clean up any private flag */
        p_block->i_flags &= ~BLOCK_FLAG_PRIVATE_MASK;

        if( b_lowdelay )
            p_block->i_flags |= BLOCK_FLAG_AU_END;

        ts_es_t *p_es_send = p_es;
        if( p_es_send->i_next_block_flags )
        {
            p_block->i_flags |= p_es_send->i_next_block_flags;
            p_es_send->i_next_block_flags = 0;
        }

        while( p_es_send )
        {
            if( p_es_send->p_program->b_selected )
            {
                /* Send a copy to each extra es */
                ts_es_t *p_extra_es = p_es_send->p_extraes;
                while( p_extra_es )
                {
                    if( p_extra_es->id )
                    {
                        block_t *p_dup = FUNC0( p_block );
                        if( p_dup )
                            FUNC2( p_demux->out, p_extra_es->id, p_dup );
                    }
                    p_extra_es = p_extra_es->p_next;
                }

                if( p_es_send->p_next )
                {
                    if( p_es_send->id )
                    {
                        block_t *p_dup = FUNC0( p_block );
                        if( p_dup )
                            FUNC2( p_demux->out, p_es_send->id, p_dup );
                    }
                }
                else
                {
                    if( p_es_send->id )
                    {
                        FUNC2( p_demux->out, p_es_send->id, p_block );
                        p_block = NULL;
                    }
                }
            }
            p_es_send = p_es_send->p_next;
        }

        if( p_block )
            FUNC1( p_block );
    }
}