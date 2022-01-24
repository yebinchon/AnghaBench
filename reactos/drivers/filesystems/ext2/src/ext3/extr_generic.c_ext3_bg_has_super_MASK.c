#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  ext3_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT3_FEATURE_RO_COMPAT_SPARSE_SUPER ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct super_block *sb, ext3_group_t group)
{
    if (FUNC0(sb,
                                   EXT3_FEATURE_RO_COMPAT_SPARSE_SUPER) &&
            !FUNC1(group))
        return 0;
    return 1;
}