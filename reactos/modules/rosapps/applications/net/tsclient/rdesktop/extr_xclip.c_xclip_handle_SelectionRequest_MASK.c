#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct TYPE_12__ {scalar_t__ selection; scalar_t__ target; scalar_t__ property; int /*<<< orphan*/  requestor; } ;
typedef  TYPE_2__ XSelectionRequestEvent ;
struct TYPE_11__ {scalar_t__ targets_atom; int num_targets; scalar_t__ timestamp_atom; scalar_t__ rdesktop_clipboard_formats_atom; int formats_data_length; scalar_t__ rdesktop_native_atom; scalar_t__ format_string_atom; scalar_t__ format_utf8_string_atom; scalar_t__ format_unicode_atom; scalar_t__ has_selection_request; TYPE_2__ selection_request; int /*<<< orphan*/ * formats_data; int /*<<< orphan*/  acquire_time; int /*<<< orphan*/  targets; } ;
struct TYPE_13__ {TYPE_1__ xclip; int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int CF_TEXT ; 
 int CF_UNICODETEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int Success ; 
 scalar_t__ True ; 
 scalar_t__ XA_ATOM ; 
 scalar_t__ XA_INTEGER ; 
 scalar_t__ XA_STRING ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int*,unsigned long*,unsigned long*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 

void
FUNC7(RDPCLIENT * This, XSelectionRequestEvent * event)
{
	unsigned long nitems, bytes_left;
	unsigned char *prop_return;
	int format, res;
	Atom type;

	FUNC0(("xclip_handle_SelectionRequest: selection=%s, target=%s, property=%s\n",
			 FUNC2(This->display, event->selection),
			 FUNC2(This->display, event->target),
			 FUNC2(This->display, event->property)));

	if (event->target == This->xclip.targets_atom)
	{
		FUNC5(This, event, XA_ATOM, 32, (uint8 *) & This->xclip.targets, This->xclip.num_targets);
		return;
	}
	else if (event->target == This->xclip.timestamp_atom)
	{
		FUNC5(This, event, XA_INTEGER, 32, (uint8 *) & This->xclip.acquire_time, 1);
		return;
	}
	else if (event->target == This->xclip.rdesktop_clipboard_formats_atom)
	{
		FUNC5(This, event, XA_STRING, 8, This->xclip.formats_data, This->xclip.formats_data_length);
	}
	else
	{
		/* All the following This->xclip.targets require an async operation with the RDP server
		   and currently we don't do X clipboard request queueing so we can only
		   handle one such request at a time. */
		if (This->xclip.has_selection_request)
		{
			FUNC0(("Error: Another clipboard request was already sent to the RDP server and not yet responded. Refusing this request.\n"));
			FUNC6(This, event);
			return;
		}
		if (event->target == This->xclip.rdesktop_native_atom)
		{
			/* Before the requestor makes a request for the _RDESKTOP_NATIVE target,
			   he should declare requestor[property] = CF_SOMETHING. */
			res = FUNC3(This->display, event->requestor,
						 event->property, 0, 1, True,
						 XA_INTEGER, &type, &format, &nitems, &bytes_left,
						 &prop_return);
			if (res != Success)
			{
				FUNC0(("Requested native format but didn't specifiy which.\n"));
				FUNC6(This, event);
				return;
			}

			format = *(uint32 *) prop_return;
			FUNC1(prop_return);
		}
		else if (event->target == This->xclip.format_string_atom || event->target == XA_STRING)
		{
			/* STRING and XA_STRING are defined to be ISO8859-1 */
			format = CF_TEXT;
		}
		else if (event->target == This->xclip.format_utf8_string_atom)
		{
#ifdef USE_UNICODE_CLIPBOARD
			format = CF_UNICODETEXT;
#else
			FUNC0(("Requested target unavailable due to lack of Unicode support. (It was not in TARGETS, so why did you ask for it?!)\n"));
			FUNC6(This, event);
			return;
#endif
		}
		else if (event->target == This->xclip.format_unicode_atom)
		{
			/* Assuming text/unicode to be UTF-16 */
			format = CF_UNICODETEXT;
		}
		else
		{
			FUNC0(("Requested target unavailable. (It was not in TARGETS, so why did you ask for it?!)\n"));
			FUNC6(This, event);
			return;
		}

		FUNC4(This, format);
		This->xclip.selection_request = *event;
		This->xclip.has_selection_request = True;
		return;		/* wait for data */
	}
}