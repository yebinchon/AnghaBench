#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int done; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ vlc_once_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(vlc_once_t *once, void (*cb)(void))
{
    unsigned done;

    /* load once->done */
    FUNC0( &done, once->done );

    /* not initialized ? */
    if( done == 0 )
    {
        FUNC1( &once->mutex );

        /* load once->done */
        FUNC0( &done, once->done );

        /* still not initialized ? */
        if( done == 0 )
        {
            cb();

            /* set once->done to 1 */
            FUNC0( &once->done, 1 );
        }

        FUNC2( &once->mutex );
    }
}