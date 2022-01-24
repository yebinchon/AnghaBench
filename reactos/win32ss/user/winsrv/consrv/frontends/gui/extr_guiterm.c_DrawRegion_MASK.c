#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  hWindow; } ;
typedef  int /*<<< orphan*/  SMALL_RECT ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC2(PGUI_CONSOLE_DATA GuiData,
           SMALL_RECT* Region)
{
    RECT RegionRect;

    FUNC1(GuiData, &RegionRect, Region);
    /* Do not erase the background: it speeds up redrawing and reduce flickering */
    FUNC0(GuiData->hWindow, &RegionRect, FALSE);
    /**UpdateWindow(GuiData->hWindow);**/
}