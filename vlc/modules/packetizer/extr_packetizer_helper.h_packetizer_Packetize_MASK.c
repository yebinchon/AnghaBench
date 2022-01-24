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
struct TYPE_4__ {int /*<<< orphan*/  p_private; scalar_t__ (* pf_validate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* pf_drain ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ packetizer_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static block_t *FUNC4( packetizer_t *p_pack, block_t **pp_block )
{
    block_t *p_out = FUNC1( p_pack, pp_block );
    if( p_out )
        return p_out;
    /* handle caller drain */
    if( pp_block == NULL && p_pack->pf_drain )
    {
        p_out = p_pack->pf_drain( p_pack->p_private );
        if( p_out && p_pack->pf_validate( p_pack->p_private, p_out ) )
        {
            FUNC0( p_out );
            p_out = NULL;
        }
    }
    return p_out;
}