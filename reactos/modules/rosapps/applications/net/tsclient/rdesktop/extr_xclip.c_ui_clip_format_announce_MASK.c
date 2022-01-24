#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_5__ {int /*<<< orphan*/  formats_data_length; scalar_t__ formats_data; int /*<<< orphan*/  clipboard_atom; int /*<<< orphan*/  acquire_time; int /*<<< orphan*/  primary_atom; } ;
struct TYPE_6__ {scalar_t__ wnd; TYPE_1__ xclip; int /*<<< orphan*/  display; int /*<<< orphan*/  last_gesturetime; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(RDPCLIENT * This, uint8 * data, uint32 length)
{
	This->xclip.acquire_time = This->last_gesturetime;

	FUNC1(This->display, This->xclip.primary_atom, This->wnd, This->xclip.acquire_time);
	if (FUNC0(This->display, This->xclip.primary_atom) != This->wnd)
		FUNC3("Failed to aquire ownership of PRIMARY clipboard\n");

	FUNC1(This->display, This->xclip.clipboard_atom, This->wnd, This->xclip.acquire_time);
	if (FUNC0(This->display, This->xclip.clipboard_atom) != This->wnd)
		FUNC3("Failed to aquire ownership of CLIPBOARD clipboard\n");

	if (This->xclip.formats_data)
		FUNC5(This->xclip.formats_data);
	This->xclip.formats_data = FUNC6(length);
	FUNC2(This->xclip.formats_data, data, length);
	This->xclip.formats_data_length = length;

	FUNC4(This);
}