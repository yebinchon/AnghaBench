#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  doi_data_block_size; } ;
typedef  TYPE_1__ dmu_object_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC6(objset_t *os, nvlist_t *nv)
{
	int error;
	dmu_object_info_t *doi;
	uint64_t val;

	error = FUNC5(os, ZVOL_ZAP_OBJ, "size", 8, 1, &val);
	if (error)
		return (FUNC0(error));

	FUNC2(nv, ZFS_PROP_VOLSIZE, val);
	doi = FUNC3(sizeof (dmu_object_info_t), KM_SLEEP);
	error = FUNC1(os, ZVOL_OBJ, doi);

	if (error == 0) {
		FUNC2(nv, ZFS_PROP_VOLBLOCKSIZE,
		    doi->doi_data_block_size);
	}

	FUNC4(doi, sizeof (dmu_object_info_t));

	return (FUNC0(error));
}