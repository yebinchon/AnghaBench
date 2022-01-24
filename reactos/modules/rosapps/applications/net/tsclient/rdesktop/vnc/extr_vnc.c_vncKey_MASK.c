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
typedef  int /*<<< orphan*/  uint32 ;
struct _rfbClientRec {int dummy; } ;
typedef  scalar_t__ rfbKeySym ;
typedef  scalar_t__ rfbBool ;
struct TYPE_4__ {scalar_t__ scancode; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ key_translation ;

/* Variables and functions */
 scalar_t__ FIRST_MODIFIER ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ LAST_MODIFIER ; 
 int /*<<< orphan*/  RDP_KEYPRESS ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* keystate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(rfbBool down, rfbKeySym keysym, struct _rfbClientRec *cl)
{
	uint32 ev_time = FUNC3(NULL);
	key_translation tr = { 0, 0 };

	if (keysym >= FIRST_MODIFIER && keysym <= LAST_MODIFIER)
	{
		/* TODO: fake local state */
		keystate[keysym - FIRST_MODIFIER] = down;
	}

	if (down)
	{
		/* TODO: fake local state */
		if (FUNC1(keysym, 0, ev_time, True))
			return;

		/* TODO: fake local state */
		tr = FUNC4(keysym, 0, 0);

		if (tr.scancode == 0)
			return;

		FUNC0(ev_time, tr);

		FUNC2(ev_time, RDP_KEYPRESS, tr.scancode);
	}
	else
	{
		/* todO: fake local state */
		if (FUNC1(keysym, 0, ev_time, False))
			return;

		/* todO: fake local state */
		tr = FUNC4(keysym, 0, 0);

		if (tr.scancode == 0)
			return;

		FUNC2(ev_time, RDP_KEYRELEASE, tr.scancode);
	}
}