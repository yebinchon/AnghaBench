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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {scalar_t__ use_rdp5; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_KEYPRESS ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 int /*<<< orphan*/  SCANCODE_CHAR_ESC ; 
 int /*<<< orphan*/  SCANCODE_CHAR_LCTRL ; 
 int /*<<< orphan*/  SCANCODE_CHAR_LWIN ; 
 int /*<<< orphan*/  SCANCODE_CHAR_RWIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(RDPCLIENT * This, uint32 ev_time, BOOL pressed, BOOL leftkey)
{
	uint8 winkey;

	if (leftkey)
		winkey = SCANCODE_CHAR_LWIN;
	else
		winkey = SCANCODE_CHAR_RWIN;

	if (pressed)
	{
		if (This->use_rdp5)
		{
			FUNC0(This, ev_time, RDP_KEYPRESS, winkey);
		}
		else
		{
			/* RDP4 doesn't support winkey. Fake with Ctrl-Esc */
			FUNC0(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_LCTRL);
			FUNC0(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_ESC);
		}
	}
	else
	{
		/* key released */
		if (This->use_rdp5)
		{
			FUNC0(This, ev_time, RDP_KEYRELEASE, winkey);
		}
		else
		{
			FUNC0(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_ESC);
			FUNC0(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LCTRL);
		}
	}
}