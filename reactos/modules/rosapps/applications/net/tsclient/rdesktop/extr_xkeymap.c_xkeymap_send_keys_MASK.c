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
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ seq_keysym; scalar_t__ scancode; struct TYPE_4__* next; } ;
typedef  TYPE_1__ key_translation ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ False ; 
 int /*<<< orphan*/  RDP_KEYPRESS ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,unsigned int,unsigned int) ; 

void
FUNC7(RDPCLIENT * This, uint32 keysym, unsigned int keycode, unsigned int state, uint32 ev_time,
		  BOOL pressed, uint8 nesting)
{
	key_translation tr, *ptr;
	tr = FUNC6(This, keysym, keycode, state);

	if (tr.seq_keysym == 0)
	{
		/* Scancode translation */
		if (tr.scancode == 0)
			return;

		if (pressed)
		{
			FUNC5(This, tr.scancode);
			FUNC1(This, ev_time, tr);
			FUNC3(This, ev_time, RDP_KEYPRESS, tr.scancode);
			FUNC4(This, ev_time, tr.scancode);
		}
		else
		{
			FUNC3(This, ev_time, RDP_KEYRELEASE, tr.scancode);
		}
		return;
	}

	/* Sequence, only on key down */
	if (pressed)
	{
		ptr = &tr;
		do
		{
			FUNC0(("Handling sequence element, keysym=0x%x\n",
				   (unsigned int) ptr->seq_keysym));

			if (nesting++ > 32)
			{
				FUNC2("Sequence nesting too deep\n");
				return;
			}

			FUNC7(This, ptr->seq_keysym, keycode, state, ev_time, True, nesting);
			FUNC7(This, ptr->seq_keysym, keycode, state, ev_time, False, nesting);
			ptr = ptr->next;
		}
		while (ptr);
	}
}