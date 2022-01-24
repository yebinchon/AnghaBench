#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  unsigned long ext4_group_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_META_BG ; 
 unsigned long FUNC3 (struct super_block*,unsigned long) ; 
 unsigned long FUNC4 (struct super_block*,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 

unsigned long FUNC6(struct super_block *sb, ext4_group_t group)
{
    unsigned long first_meta_bg =
        FUNC5(FUNC1(sb)->s_es->s_first_meta_bg);
    unsigned long metagroup = group / FUNC2(sb);

    if (!FUNC0(sb,EXT4_FEATURE_INCOMPAT_META_BG) ||
            metagroup < first_meta_bg)
        return FUNC4(sb, group);

    return FUNC3(sb,group);

}