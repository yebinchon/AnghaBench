#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  psz_string; int /*<<< orphan*/  i_int; int /*<<< orphan*/  b_bool; } ;
typedef  TYPE_1__ vlc_value_t ;
struct TYPE_9__ {int type; } ;
typedef  TYPE_2__ vlc_v4l2_ctrl_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
#define  V4L2_CTRL_TYPE_BITMASK 135 
#define  V4L2_CTRL_TYPE_BOOLEAN 134 
#define  V4L2_CTRL_TYPE_BUTTON 133 
#define  V4L2_CTRL_TYPE_INTEGER 132 
#define  V4L2_CTRL_TYPE_INTEGER64 131 
#define  V4L2_CTRL_TYPE_INTEGER_MENU 130 
#define  V4L2_CTRL_TYPE_MENU 129 
#define  V4L2_CTRL_TYPE_STRING 128 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (vlc_object_t *obj, const char *var,
                               vlc_value_t old, vlc_value_t cur, void *data)
{
    const vlc_v4l2_ctrl_t *ctrl = data;
    int ret;

    switch (ctrl->type)
    {
        case V4L2_CTRL_TYPE_INTEGER:
        case V4L2_CTRL_TYPE_MENU:
        case V4L2_CTRL_TYPE_BITMASK:
        case V4L2_CTRL_TYPE_INTEGER_MENU:
            ret = FUNC0 (ctrl, cur.i_int);
            break;
        case V4L2_CTRL_TYPE_BOOLEAN:
            ret = FUNC0 (ctrl, cur.b_bool);
            break;
        case V4L2_CTRL_TYPE_BUTTON:
            ret = FUNC0 (ctrl, 0);
            break;
        case V4L2_CTRL_TYPE_INTEGER64:
            ret = FUNC1 (ctrl, cur.i_int);
            break;
        case V4L2_CTRL_TYPE_STRING:
            ret = FUNC2 (ctrl, cur.psz_string);
            break;
        default:
            FUNC4 ();
    }

    if (ret)
    {
        FUNC3 (obj, "cannot set control %s: %s", var, FUNC5(errno));
        return VLC_EGENERIC;
    }
    (void) old;
    return VLC_SUCCESS;
}