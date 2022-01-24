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
struct TYPE_5__ {char* name; struct TYPE_5__* next; } ;
typedef  TYPE_1__ vlc_v4l2_ctrl_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ControlSetCallback ; 
 int /*<<< orphan*/  ControlsResetCallback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3 (vlc_object_t *obj, vlc_v4l2_ctrl_t *list)
{
    FUNC1 (obj, "reset", ControlsResetCallback, list);
    FUNC2 (obj, "reset");

    while (list != NULL)
    {
        vlc_v4l2_ctrl_t *next = list->next;

        FUNC1 (obj, list->name, ControlSetCallback, list);
        FUNC2 (obj, list->name);
        FUNC0 (list);
        list = next;
    }

    FUNC2 (obj, "controls");
}