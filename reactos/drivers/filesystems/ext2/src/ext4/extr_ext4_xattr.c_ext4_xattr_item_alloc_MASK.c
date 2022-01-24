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
struct ext4_xattr_item {char* name; size_t name_len; int /*<<< orphan*/  is_data; int /*<<< orphan*/  list_node; scalar_t__ data_size; int /*<<< orphan*/ * data; scalar_t__ name_index; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 scalar_t__ EXT4_XATTR_INDEX_SYSTEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 struct ext4_xattr_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static struct ext4_xattr_item *
FUNC4(__u8 name_index, const char *name, size_t name_len)
{
	struct ext4_xattr_item *item;
	item = FUNC1(sizeof(struct ext4_xattr_item) + name_len, GFP_NOFS);
	if (!item)
		return NULL;

	item->name_index = name_index;
	item->name = (char *)(item + 1);
	item->name_len = name_len;
	item->data = NULL;
	item->data_size = 0;
	FUNC0(&item->list_node);

	FUNC3(item->name, name, name_len);

	if (name_index == EXT4_XATTR_INDEX_SYSTEM &&
	    name_len == 4 &&
	    !FUNC2(name, "data", 4))
		item->is_data = TRUE;
	else
		item->is_data = FALSE;

	return item;
}