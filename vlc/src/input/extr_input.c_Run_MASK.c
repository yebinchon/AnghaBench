#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_2__ {int /*<<< orphan*/  thread; scalar_t__ b_out_pace_control; scalar_t__ b_can_pace_control; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ input_thread_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6( void *data )
{
    input_thread_private_t *priv = data;
    input_thread_t *p_input = &priv->input;

    FUNC4(&priv->interrupt);

    if( !FUNC1( p_input ) )
    {
        if( priv->b_can_pace_control && priv->b_out_pace_control )
        {
            /* We don't want a high input priority here or we'll
             * end-up sucking up all the CPU time */
            FUNC5( priv->thread, VLC_THREAD_PRIORITY_LOW );
        }

        FUNC2( p_input, true ); /* FIXME it can be wrong (like with VLM) */

        /* Clean up */
        FUNC0( p_input );
    }

    FUNC3( p_input );
    return NULL;
}