#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int outpos_serial; int outpos_xoffset; int outpos_yoffset; int /*<<< orphan*/  outpos_height; int /*<<< orphan*/  outpos_width; int /*<<< orphan*/  outstanding_position; int /*<<< orphan*/  id; int /*<<< orphan*/  wnd; } ;
typedef  TYPE_1__ seamless_window ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  border_width; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ XWindowAttributes ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_10__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(RDPCLIENT * This, seamless_window * sw)
{
	XWindowAttributes wa;
	int x, y;
	Window child_return;
	unsigned int serial;

	FUNC0(This->display, sw->wnd, &wa);
	FUNC1(This->display, sw->wnd, wa.root,
			      -wa.border_width, -wa.border_width, &x, &y, &child_return);

	serial = FUNC2(This, sw->id, x, y, wa.width, wa.height, 0);

	sw->outstanding_position = True;
	sw->outpos_serial = serial;

	sw->outpos_xoffset = x;
	sw->outpos_yoffset = y;
	sw->outpos_width = wa.width;
	sw->outpos_height = wa.height;
}