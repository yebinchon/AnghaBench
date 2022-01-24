#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* z_next_ace; TYPE_1__* z_ops; TYPE_3__* z_curr_node; int /*<<< orphan*/  z_acl; } ;
typedef  TYPE_2__ zfs_acl_t ;
struct TYPE_11__ {scalar_t__ z_ace_idx; scalar_t__ z_ace_count; scalar_t__ z_size; void* z_acldata; } ;
typedef  TYPE_3__ zfs_acl_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_9__ {size_t (* ace_size ) (void*) ;int /*<<< orphan*/  (* ace_who_get ) (void*) ;int /*<<< orphan*/  (* ace_mask_get ) (void*) ;int /*<<< orphan*/  (* ace_type_get ) (void*) ;int /*<<< orphan*/  (* ace_flags_get ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 size_t FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void *
FUNC8(zfs_acl_t *aclp, void *start, uint64_t *who,
    uint32_t *access_mask, uint16_t *iflags, uint16_t *type)
{
	zfs_acl_node_t *aclnode;

	FUNC0(aclp);

	if (start == NULL) {
		aclnode = FUNC1(&aclp->z_acl);
		if (aclnode == NULL)
			return (NULL);

		aclp->z_next_ace = aclnode->z_acldata;
		aclp->z_curr_node = aclnode;
		aclnode->z_ace_idx = 0;
	}

	aclnode = aclp->z_curr_node;

	if (aclnode == NULL)
		return (NULL);

	if (aclnode->z_ace_idx >= aclnode->z_ace_count) {
		aclnode = FUNC2(&aclp->z_acl, aclnode);
		if (aclnode == NULL)
			return (NULL);
		else {
			aclp->z_curr_node = aclnode;
			aclnode->z_ace_idx = 0;
			aclp->z_next_ace = aclnode->z_acldata;
		}
	}

	if (aclnode->z_ace_idx < aclnode->z_ace_count) {
		void *acep = aclp->z_next_ace;
		size_t ace_size;

		/*
		 * Make sure we don't overstep our bounds
		 */
		ace_size = aclp->z_ops->ace_size(acep);

		if (((caddr_t)acep + ace_size) >
		    ((caddr_t)aclnode->z_acldata + aclnode->z_size)) {
			return (NULL);
		}

		*iflags = aclp->z_ops->ace_flags_get(acep);
		*type = aclp->z_ops->ace_type_get(acep);
		*access_mask = aclp->z_ops->ace_mask_get(acep);
		*who = aclp->z_ops->ace_who_get(acep);
		aclp->z_next_ace = (caddr_t)aclp->z_next_ace + ace_size;
		aclnode->z_ace_idx++;

		return ((void *)acep);
	}
	return (NULL);
}