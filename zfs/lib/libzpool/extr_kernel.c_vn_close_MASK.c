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
struct TYPE_4__ {int v_fd; int v_dump_fd; int /*<<< orphan*/  v_path; } ;
typedef  TYPE_1__ vnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void
FUNC3(vnode_t *vp)
{
	FUNC0(vp->v_fd);
	if (vp->v_dump_fd != -1)
		FUNC0(vp->v_dump_fd);
	FUNC1(vp->v_path);
	FUNC2(vp, sizeof (vnode_t));
}