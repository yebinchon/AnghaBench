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
struct view {struct view* result; scalar_t__ table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2( struct view *view )
{
    if (!view) return;
    if (view->table) FUNC1( view->table );
    FUNC0( view->result );
    FUNC0( view );
}