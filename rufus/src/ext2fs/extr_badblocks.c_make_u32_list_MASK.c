#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ext2_struct_u32_list {int dummy; } ;
typedef  TYPE_1__* ext2_u32_list ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_8__ {int size; int num; struct TYPE_8__* list; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_MAGIC_BADBLOCKS_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 scalar_t__ FUNC1 (int,int,TYPE_1__**) ; 
 scalar_t__ FUNC2 (int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errcode_t FUNC5(int size, int num, __u32 *list,
			       ext2_u32_list *ret)
{
	ext2_u32_list	bb;
	errcode_t	retval;

	retval = FUNC2(sizeof(struct ext2_struct_u32_list), &bb);
	if (retval)
		return retval;
	FUNC4(bb, 0, sizeof(struct ext2_struct_u32_list));
	bb->magic = EXT2_ET_MAGIC_BADBLOCKS_LIST;
	bb->size = size ? size : 10;
	bb->num = num;
	retval = FUNC1(bb->size, sizeof(blk_t), &bb->list);
	if (retval) {
		FUNC0(&bb);
		return retval;
	}
	if (list)
		FUNC3(bb->list, list, bb->size * sizeof(blk_t));
	else
		FUNC4(bb->list, 0, bb->size * sizeof(blk_t));
	*ret = bb;
	return 0;
}