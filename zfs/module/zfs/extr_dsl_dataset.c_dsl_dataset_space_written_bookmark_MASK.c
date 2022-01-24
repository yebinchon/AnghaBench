#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int zbm_flags; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZBM_FLAG_HAS_FBN ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(zfs_bookmark_phys_t *bmp,
    dsl_dataset_t *new, uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
	if (!(bmp->zbm_flags & ZBM_FLAG_HAS_FBN))
		return (FUNC0(ENOTSUP));
	return (FUNC1(bmp, new,
	    usedp, compp, uncompp));
}