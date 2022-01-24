#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ requestor; int /*<<< orphan*/  time; int /*<<< orphan*/  target; int /*<<< orphan*/  selection; int /*<<< orphan*/  property; } ;
typedef  TYPE_2__ XSelectionRequestEvent ;
struct TYPE_8__ {int /*<<< orphan*/  time; int /*<<< orphan*/  property; int /*<<< orphan*/  target; int /*<<< orphan*/  selection; scalar_t__ requestor; int /*<<< orphan*/  send_event; scalar_t__ serial; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {TYPE_1__ xselection; } ;
typedef  TYPE_3__ XEvent ;
struct TYPE_11__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_4__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  NoEventMask ; 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  SelectionNotify ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(RDPCLIENT * This, XSelectionRequestEvent * req)
{
	XEvent xev;

	FUNC0(("xclip_refuse_selection: requestor=0x%08x, target=%s, property=%s\n",
			 (unsigned) req->requestor, FUNC1(This->display, req->target),
			 FUNC1(This->display, req->property)));

	xev.xselection.type = SelectionNotify;
	xev.xselection.serial = 0;
	xev.xselection.send_event = True;
	xev.xselection.requestor = req->requestor;
	xev.xselection.selection = req->selection;
	xev.xselection.target = req->target;
	xev.xselection.property = None;
	xev.xselection.time = req->time;
	FUNC2(This->display, req->requestor, False, NoEventMask, &xev);
}