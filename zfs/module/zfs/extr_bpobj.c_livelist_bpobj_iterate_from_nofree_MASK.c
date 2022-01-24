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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {TYPE_1__* bpo_phys; scalar_t__ bpo_havesubobj; } ;
typedef  TYPE_2__ bpobj_t ;
typedef  int /*<<< orphan*/  bpobj_itor_t ;
typedef  int /*<<< orphan*/  bpobj_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  bpo_subobjs; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(bpobj_t *bpo, bpobj_itor_t func, void *arg,
    int64_t start)
{
	if (bpo->bpo_havesubobj)
		FUNC0(bpo->bpo_phys->bpo_subobjs);
	bpobj_info_t *bpi = FUNC1(bpo, NULL, 0);
	int err = FUNC2(bpi, func, arg, start, NULL, B_FALSE);
	FUNC3(bpi, sizeof (bpobj_info_t));
	return (err);
}