#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_10__ {int /*<<< orphan*/  remote_modifier_state; } ;
struct TYPE_11__ {scalar_t__ numlock_sync; TYPE_1__ xkeymap; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MapLeftAltMask ; 
 int /*<<< orphan*/  MapLeftCtrlMask ; 
 int /*<<< orphan*/  MapLeftShiftMask ; 
 int /*<<< orphan*/  MapRightAltMask ; 
 int /*<<< orphan*/  MapRightCtrlMask ; 
 int /*<<< orphan*/  MapRightShiftMask ; 
 int /*<<< orphan*/  RDP_INPUT_SYNCHRONIZE ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 int /*<<< orphan*/  SCANCODE_CHAR_LALT ; 
 int /*<<< orphan*/  SCANCODE_CHAR_LCTRL ; 
 int /*<<< orphan*/  SCANCODE_CHAR_LSHIFT ; 
 int /*<<< orphan*/  SCANCODE_CHAR_RALT ; 
 int /*<<< orphan*/  SCANCODE_CHAR_RCTRL ; 
 int /*<<< orphan*/  SCANCODE_CHAR_RSHIFT ; 
 int /*<<< orphan*/  XK_Alt_L ; 
 int /*<<< orphan*/  XK_Alt_R ; 
 int /*<<< orphan*/  XK_Control_L ; 
 int /*<<< orphan*/  XK_Control_R ; 
 int /*<<< orphan*/  XK_ISO_Level3_Shift ; 
 int /*<<< orphan*/  XK_Mode_switch ; 
 int /*<<< orphan*/  XK_Shift_L ; 
 int /*<<< orphan*/  XK_Shift_R ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 

void
FUNC8(RDPCLIENT * This)
{
	unsigned int state = FUNC4(This);

	/* reset keys */
	uint32 ev_time;
	ev_time = FUNC6(NULL);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapLeftShiftMask)
	    && !FUNC1(This, state, XK_Shift_L))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LSHIFT);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapRightShiftMask)
	    && !FUNC1(This, state, XK_Shift_R))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RSHIFT);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapLeftCtrlMask)
	    && !FUNC1(This, state, XK_Control_L))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LCTRL);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapRightCtrlMask)
	    && !FUNC1(This, state, XK_Control_R))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RCTRL);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapLeftAltMask) && !FUNC1(This, state, XK_Alt_L))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LALT);

	if (FUNC0(This->xkeymap.remote_modifier_state, MapRightAltMask) &&
	    !FUNC1(This, state, XK_Alt_R) && !FUNC1(This, state, XK_Mode_switch)
	    && !FUNC1(This, state, XK_ISO_Level3_Shift))
		FUNC3(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RALT);

	FUNC5(This, ev_time);

	if (This->numlock_sync)
		FUNC2(This, ev_time, RDP_INPUT_SYNCHRONIZE, 0, FUNC7(This, state), 0);
}