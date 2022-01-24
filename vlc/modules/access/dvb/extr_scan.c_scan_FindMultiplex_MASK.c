#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {size_t i_multiplex; TYPE_2__** pp_multiplex; } ;
typedef  TYPE_1__ scan_t ;
struct TYPE_6__ {scalar_t__ i_ts_id; } ;
typedef  TYPE_2__ scan_multiplex_t ;

/* Variables and functions */

__attribute__((used)) static scan_multiplex_t * FUNC0( const scan_t *p_scan, uint16_t i_ts_id )
{
    for( size_t i = 0; i < p_scan->i_multiplex; i++ )
    {
        if( p_scan->pp_multiplex[i]->i_ts_id == i_ts_id )
            return p_scan->pp_multiplex[i];
    }
    return NULL;
}