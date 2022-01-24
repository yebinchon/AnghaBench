#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_avl_index_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fs_perm_t ;
struct TYPE_8__ {int /*<<< orphan*/  fsps_list; int /*<<< orphan*/  fsps_list_pool; } ;
typedef  TYPE_1__ fs_perm_set_t ;
struct TYPE_9__ {int /*<<< orphan*/  fspn_list_node; int /*<<< orphan*/  fspn_fsperm; } ;
typedef  TYPE_2__ fs_perm_node_t ;
typedef  scalar_t__ data_type_t ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC12(fs_perm_set_t *fspset, nvlist_t *nvl)
{
	nvpair_t *nvp = NULL;
	uu_avl_index_t idx = 0;

	while ((nvp = FUNC3(nvl, nvp)) != NULL) {
		nvlist_t *nvl2 = NULL;
		const char *fsname = FUNC4(nvp);
		data_type_t type = FUNC5(nvp);
		fs_perm_t *fsperm = NULL;
		fs_perm_node_t *node = FUNC8(sizeof (fs_perm_node_t));
		if (node == NULL)
			FUNC2();

		fsperm = &node->fspn_fsperm;

		FUNC0(DATA_TYPE_NVLIST == type);

		FUNC10(node, &node->fspn_list_node,
		    fspset->fsps_list_pool);

		idx = FUNC11(fspset->fsps_list);
		FUNC1(fsperm, fspset, fsname);

		if (FUNC6(nvp, &nvl2) != 0)
			return (-1);

		(void) FUNC7(fsperm, nvl2);

		FUNC9(fspset->fsps_list, node, idx);
	}

	return (0);
}