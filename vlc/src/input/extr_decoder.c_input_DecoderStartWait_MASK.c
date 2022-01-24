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
struct decoder_owner {int b_waiting; int b_first; int b_has_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_request; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC0( !p_owner->b_waiting );

    FUNC3( &p_owner->lock );
    p_owner->b_first = true;
    p_owner->b_has_data = false;
    p_owner->b_waiting = true;
    FUNC2( &p_owner->wait_request );
    FUNC4( &p_owner->lock );
}