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
struct ext4_xattr_ref {scalar_t__ inode_size_rem; scalar_t__ block_size_rem; void* dirty; int /*<<< orphan*/  ea_size; } ;
struct ext4_xattr_item {size_t data_size; int /*<<< orphan*/  name_len; void* in_inode; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 void* FALSE ; 
 void* TRUE ; 
 struct ext4_xattr_item* FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC3 (struct ext4_xattr_item*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_xattr_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_xattr_ref*,struct ext4_xattr_item*) ; 

__attribute__((used)) static struct ext4_xattr_item *
FUNC6(struct ext4_xattr_ref *xattr_ref, __u8 name_index,
		       const char *name, size_t name_len, const void *data,
		       size_t data_size,
		       int *err)
{
	struct ext4_xattr_item *item;
	item = FUNC2(name_index, name, name_len);
	if (!item) {
		if (err)
			*err = -ENOMEM;

		return NULL;
	}

	item->in_inode = TRUE;
	if (xattr_ref->inode_size_rem <
	   FUNC1(data_size) +
	   FUNC0(item->name_len)) {
		if (xattr_ref->block_size_rem <
		   FUNC1(data_size) +
		   FUNC0(item->name_len)) {
			if (err)
				*err = -ENOSPC;

			return NULL;
		}

		item->in_inode = FALSE;
	}
	if (FUNC3(item, data, data_size) != 0) {
		FUNC4(item);
		if (err)
			*err = -ENOMEM;

		return NULL;
	}
	FUNC5(xattr_ref, item);
	xattr_ref->ea_size +=
	    FUNC1(item->data_size) + FUNC0(item->name_len);
	if (item->in_inode) {
		xattr_ref->inode_size_rem -=
			FUNC1(item->data_size) +
			FUNC0(item->name_len);
	} else {
		xattr_ref->block_size_rem -=
			FUNC1(item->data_size) +
			FUNC0(item->name_len);
	}
	xattr_ref->dirty = TRUE;
	if (err)
		*err = 0;

	return item;
}