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
struct TYPE_6__ {int /*<<< orphan*/  drc_raw; int /*<<< orphan*/  drc_newsnapobj; int /*<<< orphan*/ * drc_guid_to_ds_map; int /*<<< orphan*/  drc_tofs; int /*<<< orphan*/  drc_keynvl; scalar_t__ drc_newfs; void* drc_owner; } ;
typedef  TYPE_1__ dmu_recv_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(dmu_recv_cookie_t *drc, void *owner)
{
	int error;

	drc->drc_owner = owner;

	if (drc->drc_newfs)
		error = FUNC3(drc);
	else
		error = FUNC2(drc);

	if (error != 0) {
		FUNC1(drc);
		FUNC4(drc->drc_keynvl);
	} else if (drc->drc_guid_to_ds_map != NULL) {
		(void) FUNC0(drc->drc_tofs, drc->drc_guid_to_ds_map,
		    drc->drc_newsnapobj, drc->drc_raw);
	}
	return (error);
}