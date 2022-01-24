#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_storage_r; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ts_thread_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef  TYPE_2__ ts_storage_t ;
typedef  int /*<<< orphan*/  ts_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( ts_thread_t *p_ts, ts_cmd_t *p_cmd, bool b_flush )
{
    FUNC3( &p_ts->lock );

    if( FUNC1( p_ts->p_storage_r ) )
        return VLC_EGENERIC;

    FUNC2( p_ts->p_storage_r, p_cmd, b_flush );

    while( FUNC1( p_ts->p_storage_r ) )
    {
        ts_storage_t *p_next = p_ts->p_storage_r->p_next;
        if( !p_next )
            break;

        FUNC0( p_ts->p_storage_r );
        p_ts->p_storage_r = p_next;
    }

    return VLC_SUCCESS;
}