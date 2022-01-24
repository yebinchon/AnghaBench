#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/  dd_pending_frees; int /*<<< orphan*/  dd_pending_allocs; int /*<<< orphan*/  dd_livelist; TYPE_1__* dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_4__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_LIVELIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(dsl_dir_t *dd, uint64_t obj)
{
	objset_t *mos = dd->dd_pool->dp_meta_objset;
	FUNC0(FUNC3(dd->dd_pool->dp_spa,
	    SPA_FEATURE_LIVELIST));
	FUNC2(&dd->dd_livelist, mos, obj);
	FUNC1(&dd->dd_pending_allocs);
	FUNC1(&dd->dd_pending_frees);
}