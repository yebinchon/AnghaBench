#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* v_file; int /*<<< orphan*/  v_gfp_mask; int /*<<< orphan*/  f_mapping; } ;
typedef  TYPE_1__ vnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(vnode_t *vp, int flags, int x1, int x2, void *x3, void *x4)
{
	int rc;

	FUNC0(vp);
	FUNC0(vp->v_file);

	FUNC2(vp->v_file->f_mapping, vp->v_gfp_mask);
	rc = FUNC1(vp->v_file, 0);
	FUNC3(vp);

	return (-rc);
}