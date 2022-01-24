#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__* p_storage_r; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ ts_thread_t ;
typedef  int /*<<< orphan*/  ts_cmd_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( ts_thread_t *p_ts )
{
    FUNC5( p_ts->thread );
    FUNC6( p_ts->thread, NULL );

    FUNC7( &p_ts->lock );
    for( ;; )
    {
        ts_cmd_t cmd;

        if( FUNC2( p_ts, &cmd, true ) )
            break;

        FUNC0( &cmd );
    }
    FUNC4( !p_ts->p_storage_r || !p_ts->p_storage_r->p_next );
    if( p_ts->p_storage_r )
        FUNC3( p_ts->p_storage_r );
    FUNC8( &p_ts->lock );

    FUNC1( p_ts );
}