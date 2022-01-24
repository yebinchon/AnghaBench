#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_7__ {int i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( decoder_t *p_dec, block_t *p_block )
{
    block_t *p_data;

    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        FUNC2( p_block );
        return VLCDEC_SUCCESS;
    }

    if( !(p_data = FUNC1( p_dec, p_block )) )
        return VLCDEC_SUCCESS;

    /* Parse and decode */
    subpicture_t *p_spu = FUNC0( p_dec, p_data );
    FUNC2( p_data );
    if( p_spu != NULL )
        FUNC3( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}