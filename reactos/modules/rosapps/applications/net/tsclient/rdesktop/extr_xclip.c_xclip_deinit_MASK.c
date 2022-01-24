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
struct TYPE_5__ {int /*<<< orphan*/  acquire_time; int /*<<< orphan*/  clipboard_atom; int /*<<< orphan*/  primary_atom; } ;
struct TYPE_6__ {scalar_t__ wnd; TYPE_1__ xclip; int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  None ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(RDPCLIENT * This)
{
	if (FUNC0(This->display, This->xclip.primary_atom) == This->wnd)
		FUNC1(This->display, This->xclip.primary_atom, None, This->xclip.acquire_time);
	if (FUNC0(This->display, This->xclip.clipboard_atom) == This->wnd)
		FUNC1(This->display, This->xclip.clipboard_atom, None, This->xclip.acquire_time);
	FUNC2(This);
}