#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sa_handle_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {scalar_t__ doi_bonus_type; int doi_bonus_size; } ;
typedef  TYPE_1__ dmu_object_info_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 scalar_t__ DMU_OT_SA ; 
 scalar_t__ DMU_OT_ZNODE ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  SA_HDL_PRIVATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC5(objset_t *osp, uint64_t obj, sa_handle_t **hdlp,
    dmu_buf_t **db, void *tag)
{
	dmu_object_info_t doi;
	int error;

	if ((error = FUNC2(osp, obj, tag, db)) != 0)
		return (error);

	FUNC1(*db, &doi);
	if ((doi.doi_bonus_type != DMU_OT_SA &&
	    doi.doi_bonus_type != DMU_OT_ZNODE) ||
	    (doi.doi_bonus_type == DMU_OT_ZNODE &&
	    doi.doi_bonus_size < sizeof (znode_phys_t))) {
		FUNC3(*db, tag);
		return (FUNC0(ENOTSUP));
	}

	error = FUNC4(osp, obj, NULL, SA_HDL_PRIVATE, hdlp);
	if (error != 0) {
		FUNC3(*db, tag);
		return (error);
	}

	return (0);
}