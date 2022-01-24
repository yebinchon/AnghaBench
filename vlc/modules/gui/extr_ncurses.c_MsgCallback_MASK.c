#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_log_t ;
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {scalar_t__ verbosity; size_t i_msgs; int /*<<< orphan*/  msg_lock; TYPE_1__* msgs; } ;
typedef  TYPE_2__ intf_sys_t ;
struct TYPE_3__ {int type; char* msg; int /*<<< orphan*/ * item; } ;

/* Variables and functions */
 int VLC_MSG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *data, int type, const vlc_log_t *msg,
                        const char *format, va_list ap)
{
    intf_sys_t *sys = data;
    char *text;

    if (sys->verbosity < 0
     || sys->verbosity < (type - VLC_MSG_ERR)
     || FUNC3(&text, format, ap) == -1)
        return;

    FUNC4(&sys->msg_lock);

    sys->msgs[sys->i_msgs].type = type;
    if (sys->msgs[sys->i_msgs].item != NULL)
        FUNC2(sys->msgs[sys->i_msgs].item);
    sys->msgs[sys->i_msgs].item = FUNC1(msg);
    FUNC0(sys->msgs[sys->i_msgs].msg);
    sys->msgs[sys->i_msgs].msg = text;

    if (++sys->i_msgs == (sizeof sys->msgs / sizeof *sys->msgs))
        sys->i_msgs = 0;

    FUNC5(&sys->msg_lock);
}