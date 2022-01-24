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
struct TYPE_3__ {int type; struct TYPE_3__* next; int /*<<< orphan*/  default_value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ vlc_v4l2_ctrl_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
#define  V4L2_CTRL_TYPE_BOOLEAN 131 
#define  V4L2_CTRL_TYPE_INTEGER 130 
#define  V4L2_CTRL_TYPE_INTEGER_MENU 129 
#define  V4L2_CTRL_TYPE_MENU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (vlc_object_t *obj, vlc_v4l2_ctrl_t *list)
{
    while (list != NULL)
    {
        switch (list->type)
        {
            case V4L2_CTRL_TYPE_INTEGER:
            case V4L2_CTRL_TYPE_MENU:
            case V4L2_CTRL_TYPE_INTEGER_MENU:
                FUNC1 (obj, list->name, list->default_value);
                break;
            case V4L2_CTRL_TYPE_BOOLEAN:
                FUNC0 (obj, list->name, list->default_value);
                break;
            default:;
        }
        list = list->next;
    }
}