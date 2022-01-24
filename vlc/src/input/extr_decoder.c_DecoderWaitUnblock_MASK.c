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
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  b_has_data; int /*<<< orphan*/  b_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( struct decoder_owner *p_owner )
{
    FUNC1( &p_owner->lock );

    for( ;; )
    {
        if( !p_owner->b_waiting || !p_owner->b_has_data )
            break;
        FUNC0( &p_owner->wait_request, &p_owner->lock );
    }
}