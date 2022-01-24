#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_size; int /*<<< orphan*/ * p_elems; } ;
struct TYPE_5__ {TYPE_4__ programs; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ts_pat_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6( demux_t *p_demux, ts_pat_t *pat )
{
    if( FUNC2( pat->handle ) )
        FUNC4( pat->handle );
    FUNC3( pat->handle );
    for( int i=0; i<pat->programs.i_size; i++ )
        FUNC1( p_demux, pat->programs.p_elems[i] );
    FUNC0( pat->programs );
    FUNC5( pat );
}