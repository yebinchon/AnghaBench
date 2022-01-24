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
struct TYPE_5__ {int i_version; int i_ts_id; int b_generated; int /*<<< orphan*/  programs; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ts_pat_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 

ts_pat_t *FUNC4( demux_t *p_demux )
{
    ts_pat_t *pat = FUNC3( sizeof( ts_pat_t ) );
    if( !pat )
        return NULL;

    if( !FUNC2( p_demux, &pat->handle ) )
    {
        FUNC1( pat );
        return NULL;
    }

    pat->i_version  = -1;
    pat->i_ts_id    = -1;
    pat->b_generated = false;
    FUNC0( pat->programs );

    return pat;
}