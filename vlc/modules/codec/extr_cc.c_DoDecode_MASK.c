#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3( decoder_t *p_dec, bool b_drain )
{
    block_t *p_block = FUNC1( p_dec, b_drain );
    if( !p_block )
        return false;

    FUNC0( p_dec, p_block->i_pts, p_block->p_buffer, p_block->i_buffer );
    FUNC2( p_block );

    return true;
}