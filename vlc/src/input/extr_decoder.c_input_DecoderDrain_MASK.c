#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct decoder_owner {int b_draining; int /*<<< orphan*/  p_fifo; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );

    FUNC1( p_owner->p_fifo );
    p_owner->b_draining = true;
    FUNC2( p_owner->p_fifo );
    FUNC3( p_owner->p_fifo );
}