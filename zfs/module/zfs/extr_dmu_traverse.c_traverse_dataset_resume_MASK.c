#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_object; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  blkptr_cb_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_bp; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 

int
FUNC2(dsl_dataset_t *ds, uint64_t txg_start,
    zbookmark_phys_t *resume,
    int flags, blkptr_cb_t func, void *arg)
{
	return (FUNC1(ds->ds_dir->dd_pool->dp_spa, ds, ds->ds_object,
	    &FUNC0(ds)->ds_bp, txg_start, resume, flags, func, arg));
}