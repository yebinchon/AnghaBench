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
typedef  int /*<<< orphan*/  uu_avl_pool_t ;
struct TYPE_6__ {char const* fsp_name; TYPE_2__* fsp_set; int /*<<< orphan*/ * fsp_uge_avl; int /*<<< orphan*/ * fsp_sc_avl; } ;
typedef  TYPE_1__ fs_perm_t ;
struct TYPE_7__ {int /*<<< orphan*/ * fsps_who_perm_avl_pool; int /*<<< orphan*/ * fsps_named_set_avl_pool; } ;
typedef  TYPE_2__ fs_perm_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(fs_perm_t *fsperm, fs_perm_set_t *fspset, const char *fsname)
{
	uu_avl_pool_t	*nset_pool = fspset->fsps_named_set_avl_pool;
	uu_avl_pool_t	*who_pool = fspset->fsps_who_perm_avl_pool;

	FUNC0(fsperm, sizeof (fs_perm_t));

	if ((fsperm->fsp_sc_avl = FUNC2(nset_pool, NULL, UU_DEFAULT))
	    == NULL)
		FUNC1();

	if ((fsperm->fsp_uge_avl = FUNC2(who_pool, NULL, UU_DEFAULT))
	    == NULL)
		FUNC1();

	fsperm->fsp_set = fspset;
	fsperm->fsp_name = fsname;
}