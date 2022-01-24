#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_5__ {int i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( decoder_t *p_dec, block_t *p_block )
{
    subpicture_t *p_spu;

    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        FUNC1( p_block );
        return VLCDEC_SUCCESS;
    }

    p_spu = FUNC0( p_dec, p_block );

    FUNC1( p_block );
    if( p_spu != NULL )
        FUNC2( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}