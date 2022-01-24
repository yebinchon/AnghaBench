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
struct TYPE_3__ {scalar_t__ box_type; int /*<<< orphan*/  search_chain; int /*<<< orphan*/  open_chain; } ;
typedef  TYPE_1__ intf_sys_t ;

/* Variables and functions */
 scalar_t__ BOX_OPEN ; 
 int COLS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(intf_sys_t *sys)
{
    int width = COLS - 2;

    FUNC0(7, 1, width);
    if (sys->box_type == BOX_OPEN)
        FUNC2(7, 1, width, FUNC1("Open: %s"), sys->open_chain);
    else
        FUNC2(7, 1, width, FUNC1("Find: %s"), sys->search_chain);
}