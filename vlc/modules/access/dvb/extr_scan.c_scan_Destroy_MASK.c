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
struct TYPE_5__ {size_t i_multiplex; int /*<<< orphan*/  p_scanlist; struct TYPE_5__* pp_multiplex; int /*<<< orphan*/  parameter; int /*<<< orphan*/ * p_dialog_id; int /*<<< orphan*/  p_obj; } ;
typedef  TYPE_1__ scan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5( scan_t *p_scan )
{
    if( !p_scan )
        return;
    if( p_scan->p_dialog_id != NULL )
        FUNC4( p_scan->p_obj, p_scan->p_dialog_id );

    FUNC3( &p_scan->parameter );

    for( size_t i = 0; i < p_scan->i_multiplex; i++ )
        FUNC2( p_scan->pp_multiplex[i] );
    FUNC0( p_scan->pp_multiplex );

    FUNC1( p_scan->p_scanlist );

    FUNC0( p_scan );
}