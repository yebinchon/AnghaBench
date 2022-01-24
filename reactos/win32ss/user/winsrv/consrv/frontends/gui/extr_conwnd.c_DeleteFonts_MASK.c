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
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t ULONG ;
struct TYPE_3__ {int /*<<< orphan*/ ** Font; } ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

VOID
FUNC2(PGUI_CONSOLE_DATA GuiData)
{
    ULONG i;
    for (i = 0; i < FUNC0(GuiData->Font); ++i)
    {
        if (GuiData->Font[i] != NULL) FUNC1(GuiData->Font[i]);
        GuiData->Font[i] = NULL;
    }
}