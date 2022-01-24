#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dmu_send_params {TYPE_1__* to_ds; int /*<<< orphan*/  off; int /*<<< orphan*/  outfd; } ;
struct TYPE_7__ {int /*<<< orphan*/  dss_proc; int /*<<< orphan*/  dss_off; int /*<<< orphan*/  dss_outfd; } ;
typedef  TYPE_2__ dmu_sendstatus_t ;
struct TYPE_6__ {int /*<<< orphan*/  ds_sendstream_lock; int /*<<< orphan*/  ds_sendstreams; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  curproc ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dmu_sendstatus_t *
FUNC4(struct dmu_send_params *dspp)
{
	dmu_sendstatus_t *dssp = FUNC0(sizeof (*dssp), KM_SLEEP);
	dssp->dss_outfd = dspp->outfd;
	dssp->dss_off = dspp->off;
	dssp->dss_proc = curproc;
	FUNC2(&dspp->to_ds->ds_sendstream_lock);
	FUNC1(&dspp->to_ds->ds_sendstreams, dssp);
	FUNC3(&dspp->to_ds->ds_sendstream_lock);
	return (dssp);
}