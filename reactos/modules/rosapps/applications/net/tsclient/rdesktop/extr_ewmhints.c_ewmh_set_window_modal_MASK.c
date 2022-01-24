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
typedef  int /*<<< orphan*/  Window ;
struct TYPE_5__ {int /*<<< orphan*/  state_modal_atom; } ;
struct TYPE_6__ {TYPE_1__ ewmhints; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(RDPCLIENT * This, Window wnd)
{
	if (FUNC0(This, wnd, 1, This->ewmhints.state_modal_atom, 0) < 0)
		return -1;
	return 0;
}