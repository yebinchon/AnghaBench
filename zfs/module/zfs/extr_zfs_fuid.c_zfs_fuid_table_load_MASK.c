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
typedef  int uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {int /*<<< orphan*/  f_ksid; scalar_t__ f_idx; } ;
typedef  TYPE_1__ fuid_domain_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUID_DOMAIN ; 
 int /*<<< orphan*/  FUID_IDX ; 
 int /*<<< orphan*/  FUID_NVP_ARRAY ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC13 (char*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

uint64_t
FUNC14(objset_t *os, uint64_t fuid_obj, avl_tree_t *idx_tree,
    avl_tree_t *domain_tree)
{
	dmu_buf_t *db;
	uint64_t fuid_size;

	FUNC0(fuid_obj != 0);
	FUNC1(0 == FUNC3(os, fuid_obj,
	    FTAG, &db));
	fuid_size = *(uint64_t *)db->db_data;
	FUNC4(db, FTAG);

	if (fuid_size)  {
		nvlist_t **fuidnvp;
		nvlist_t *nvp = NULL;
		uint_t count;
		char *packed;
		int i;

		packed = FUNC6(fuid_size, KM_SLEEP);
		FUNC1(FUNC5(os, fuid_obj, 0,
		    fuid_size, packed, DMU_READ_PREFETCH) == 0);
		FUNC1(FUNC13(packed, fuid_size,
		    &nvp, 0) == 0);
		FUNC1(FUNC10(nvp, FUID_NVP_ARRAY,
		    &fuidnvp, &count) == 0);

		for (i = 0; i != count; i++) {
			fuid_domain_t *domnode;
			char *domain;
			uint64_t idx;

			FUNC1(FUNC11(fuidnvp[i], FUID_DOMAIN,
			    &domain) == 0);
			FUNC1(FUNC12(fuidnvp[i], FUID_IDX,
			    &idx) == 0);

			domnode = FUNC6(sizeof (fuid_domain_t), KM_SLEEP);

			domnode->f_idx = idx;
			domnode->f_ksid = FUNC8(domain);
			FUNC2(idx_tree, domnode);
			FUNC2(domain_tree, domnode);
		}
		FUNC9(nvp);
		FUNC7(packed, fuid_size);
	}
	return (fuid_size);
}