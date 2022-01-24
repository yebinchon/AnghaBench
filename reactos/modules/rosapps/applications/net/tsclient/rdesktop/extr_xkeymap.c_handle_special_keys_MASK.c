#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_11__ {int /*<<< orphan*/  numlock_sync; int /*<<< orphan*/  win_button_size; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  RDP_INPUT_SCANCODE ; 
 int /*<<< orphan*/  RDP_INPUT_SYNCHRONIZE ; 
 int /*<<< orphan*/  RDP_KEYPRESS ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 int SCANCODE_EXTENDED ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  XK_Alt_L ; 
 int /*<<< orphan*/  XK_Alt_R ; 
#define  XK_Break 139 
 int /*<<< orphan*/  XK_Control_L ; 
 int /*<<< orphan*/  XK_Control_R ; 
#define  XK_Hyper_L 138 
#define  XK_Hyper_R 137 
#define  XK_Meta_L 136 
#define  XK_Meta_R 135 
#define  XK_Num_Lock 134 
#define  XK_Overlay1_Enable 133 
#define  XK_Pause 132 
#define  XK_Return 131 
#define  XK_Super_L 130 
#define  XK_Super_R 129 
#define  XK_space 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

BOOL
FUNC8(RDPCLIENT * This, uint32 keysym, unsigned int state, uint32 ev_time, BOOL pressed)
{
	switch (keysym)
	{
		case XK_Return:
			if ((FUNC0(This, state, XK_Alt_L) || FUNC0(This, state, XK_Alt_R))
			    && (FUNC0(This, state, XK_Control_L)
				|| FUNC0(This, state, XK_Control_R)))
			{
				/* Ctrl-Alt-Enter: toggle full screen */
				if (pressed)
					FUNC7(This);
				return True;
			}
			break;

		case XK_Break:
			/* Send Break sequence E0 46 E0 C6 */
			if (pressed)
			{
				FUNC2(This, ev_time, RDP_KEYPRESS,
						  (SCANCODE_EXTENDED | 0x46));
				FUNC2(This, ev_time, RDP_KEYPRESS,
						  (SCANCODE_EXTENDED | 0xc6));
			}
			/* No release sequence */
			return True;
			break;

		case XK_Pause:
			/* According to MS Keyboard Scan Code
			   Specification, pressing Pause should result
			   in E1 1D 45 E1 9D C5. I'm not exactly sure
			   of how this is supposed to be sent via
			   RDP. The code below seems to work, but with
			   the side effect that Left Ctrl stays
			   down. Therefore, we release it when Pause
			   is released. */
			if (pressed)
			{
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xe1, 0);
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x1d, 0);
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x45, 0);
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xe1, 0);
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x9d, 0);
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xc5, 0);
			}
			else
			{
				/* Release Left Ctrl */
				FUNC1(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYRELEASE,
					       0x1d, 0);
			}
			return True;
			break;

		case XK_Meta_L:	/* Windows keys */
		case XK_Super_L:
		case XK_Hyper_L:
			FUNC4(This, ev_time, pressed, True);
			return True;
			break;

		case XK_Meta_R:
		case XK_Super_R:
		case XK_Hyper_R:
			FUNC4(This, ev_time, pressed, False);
			return True;
			break;

		case XK_space:
			/* Prevent access to the Windows system menu in single app mode */
			if (This->win_button_size
			    && (FUNC0(This, state, XK_Alt_L) || FUNC0(This, state, XK_Alt_R)))
				return True;
			break;

		case XK_Num_Lock:
			/* Synchronize on key release */
			if (This->numlock_sync && !pressed)
				FUNC1(This, 0, RDP_INPUT_SYNCHRONIZE, 0,
					       FUNC5(This, FUNC3(This)), 0);

			/* Inhibit */
			return True;
			break;
		case XK_Overlay1_Enable:
			/* Toggle SeamlessRDP */
			if (pressed)
				FUNC6(This);
			break;

	}
	return False;
}