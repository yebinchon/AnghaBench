#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_12__ {int your_event_mask; } ;
typedef  TYPE_2__ XWindowAttributes ;
struct TYPE_13__ {scalar_t__ state; scalar_t__ atom; scalar_t__ window; } ;
typedef  TYPE_3__ XPropertyEvent ;
struct TYPE_11__ {scalar_t__ clip_buflen; scalar_t__ rdesktop_selection_notify_atom; int /*<<< orphan*/  rdesktop_clipboard_target_atom; int /*<<< orphan*/ * clip_buffer; int /*<<< orphan*/  incr_target; scalar_t__ waiting_for_INCR; } ;
struct TYPE_14__ {int /*<<< orphan*/  display; TYPE_1__ xclip; int /*<<< orphan*/  wnd; } ;
typedef  TYPE_4__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AnyPropertyType ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  False ; 
 int PropertyChangeMask ; 
 scalar_t__ PropertyNewValue ; 
 scalar_t__ Success ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,unsigned long*,unsigned long*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC13(RDPCLIENT * This, XPropertyEvent * event)
{
	unsigned long nitems;
	unsigned long offset = 0;
	unsigned long bytes_left = 1;
	int format;
	XWindowAttributes wa;
	uint8 *data;
	Atom type;

	if (event->state == PropertyNewValue && This->xclip.waiting_for_INCR)
	{
		FUNC0(("x_clip_handle_PropertyNotify: This->xclip.waiting_for_INCR != 0\n"));

		while (bytes_left > 0)
		{
			/* Unlike the specification, we don't set the 'delete' arugment to True
			   since we slurp the INCR's chunks in even-smaller chunks of 4096 bytes. */
			if ((FUNC5
			     (This->display, This->wnd, This->xclip.rdesktop_clipboard_target_atom, offset, 4096L,
			      False, AnyPropertyType, &type, &format, &nitems, &bytes_left,
			      &data) != Success))
			{
				FUNC3(data);
				return;
			}

			if (nitems == 0)
			{
				/* INCR transfer finished */
				FUNC4(This->display, This->wnd, &wa);
				FUNC6(This->display, This->wnd,
					     (wa.your_event_mask ^ PropertyChangeMask));
				FUNC3(data);
				This->xclip.waiting_for_INCR = 0;

				if (This->xclip.clip_buflen > 0)
				{
					if (!FUNC10
					    (This, This->xclip.clip_buffer, This->xclip.clip_buflen, This->xclip.incr_target))
					{
						FUNC7(This);
					}
					FUNC11(This->xclip.clip_buffer);
					This->xclip.clip_buffer = NULL;
					This->xclip.clip_buflen = 0;
				}
			}
			else
			{
				/* Another chunk in the INCR transfer */
				offset += (nitems / 4);	/* offset at which to begin the next slurp */
				This->xclip.clip_buffer = FUNC12(This->xclip.clip_buffer, This->xclip.clip_buflen + nitems);
				FUNC8(This->xclip.clip_buffer + This->xclip.clip_buflen, data, nitems);
				This->xclip.clip_buflen += nitems;

				FUNC3(data);
			}
		}
		FUNC2(This->display, This->wnd, This->xclip.rdesktop_clipboard_target_atom);
		return;
	}

	if ((event->atom == This->xclip.rdesktop_selection_notify_atom) &&
	    (event->window == FUNC1(This->display)))
		FUNC9(This);
}