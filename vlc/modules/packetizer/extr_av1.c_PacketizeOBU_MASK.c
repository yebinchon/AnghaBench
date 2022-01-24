#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_24__ {TYPE_4__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_25__ {int i_flags; size_t p_buffer; size_t i_buffer; void* i_pts; void* i_dts; struct TYPE_25__* p_next; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_23__ {TYPE_3__* p_chain; TYPE_3__** pp_chain_last; } ;
struct TYPE_26__ {int /*<<< orphan*/ * p_sequence_header_block; TYPE_1__ obus; } ;
typedef  TYPE_4__ av1_sys_t ;
typedef  int /*<<< orphan*/  AV1_OBU_iterator_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 TYPE_3__* FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* VLC_TICK_INVALID ; 
 TYPE_3__* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__***,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 

__attribute__((used)) static block_t *FUNC13(decoder_t *p_dec, block_t **pp_block)
{
    av1_sys_t *p_sys = p_dec->p_sys;

    block_t *p_block = pp_block ? *pp_block : NULL;
    if(p_block)
    {
        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED) )
        {
            /* First always drain complete blocks before discontinuity */
            block_t *p_drain = FUNC13( p_dec, NULL );
            if(p_drain)
                return p_drain;

            FUNC5( p_dec );

            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                FUNC10( p_block );
                return NULL;
            }
        }

        if(!FUNC0(p_block->p_buffer, p_block->i_buffer))
        {
            FUNC12(p_dec,"fed with invalid OBU");
            FUNC10(p_block);
            return NULL;
        }
        *pp_block = NULL;
        FUNC9(&p_sys->obus.pp_chain_last, p_block);
    }

    block_t *p_output = NULL;
    while(p_sys->obus.p_chain)
    {
        block_t *p_frag = p_sys->obus.p_chain;

        AV1_OBU_iterator_ctx_t it;
        FUNC2(&it, p_frag->p_buffer, p_frag->i_buffer);
        const uint8_t *p_obu; size_t i_obu;

        if(!FUNC1(&it, &p_obu, &i_obu))
        {
            FUNC12(p_dec,"Invalid OBU header in sequence, discarding");
            /* frag is not OBU, drop */
            p_sys->obus.p_chain = p_frag->p_next;
            if(p_frag->p_next == NULL)
                p_sys->obus.pp_chain_last = &p_sys->obus.p_chain;
            else
                p_frag->p_next = NULL;
            FUNC10(p_frag);
            continue;
        }

        block_t *p_obublock;
        if(i_obu == p_frag->i_buffer)
        {
            p_sys->obus.p_chain = p_frag->p_next;
            if(p_frag->p_next == NULL)
                p_sys->obus.pp_chain_last = &p_sys->obus.p_chain;
            else
                p_frag->p_next = NULL;
            p_obublock = p_frag;
        }
        else
        {
            p_obublock = FUNC8(i_obu);
            FUNC11(p_obublock->p_buffer, p_frag->p_buffer, i_obu);
            p_frag->i_buffer -= i_obu;
            p_frag->p_buffer += i_obu;
            p_obublock->i_dts = p_frag->i_dts;
            p_obublock->i_pts = p_frag->i_pts;
            p_obublock->i_flags = p_frag->i_flags;
            p_frag->i_flags = 0;
            p_frag->i_dts = VLC_TICK_INVALID;
            p_frag->i_pts = VLC_TICK_INVALID;
        }

        p_output = FUNC6(p_dec, p_obublock);
        if(p_output)
            break;
    }


    if(!p_output && pp_block == NULL)
        p_output = FUNC4(p_dec, p_sys->p_sequence_header_block != NULL);

    if(p_output)
    {
        p_output = FUNC3(p_dec, p_output);
        FUNC7(p_dec);
    }

    return p_output;
}