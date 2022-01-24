#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_deleg_who_type_t ;
struct TYPE_8__ {char const* who_name; TYPE_3__* who_fsperm; int /*<<< orphan*/  who_type; int /*<<< orphan*/ * who_deleg_perm_avl; } ;
typedef  TYPE_2__ who_perm_t ;
typedef  int /*<<< orphan*/  uu_avl_pool_t ;
struct TYPE_9__ {TYPE_1__* fsp_set; } ;
typedef  TYPE_3__ fs_perm_t ;
struct TYPE_7__ {int /*<<< orphan*/ * fsps_deleg_perm_avl_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  UU_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(who_perm_t *who_perm, fs_perm_t *fsperm,
    zfs_deleg_who_type_t type, const char *name)
{
	uu_avl_pool_t	*pool;
	pool = fsperm->fsp_set->fsps_deleg_perm_avl_pool;

	FUNC0(who_perm, sizeof (who_perm_t));

	if ((who_perm->who_deleg_perm_avl = FUNC2(pool, NULL,
	    UU_DEFAULT)) == NULL)
		FUNC1();

	who_perm->who_type = type;
	who_perm->who_name = name;
	who_perm->who_fsperm = fsperm;
}