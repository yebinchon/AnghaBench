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
typedef  int /*<<< orphan*/  xcb_xrm_database_t ;
struct TYPE_3__ {int /*<<< orphan*/  connection; } ;
typedef  TYPE_1__ xcb_stuff ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_XRESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 ( xcb_stuff *xcb )
{
    xcb_xrm_database_t *xDB = FUNC3 ( xcb->connection );
    if ( xDB ) {
        FUNC0 ( xDB, CONFIG_XRESOURCES );
        FUNC1 ( xDB, CONFIG_XRESOURCES );
        FUNC2 ( xDB );
    }
}