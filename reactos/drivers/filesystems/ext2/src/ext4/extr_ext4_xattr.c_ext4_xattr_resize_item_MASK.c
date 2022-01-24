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
struct ext4_xattr_ref {size_t inode_size_rem; size_t block_size_rem; size_t ea_size; void* dirty; } ;
struct ext4_xattr_item {size_t data_size; void* in_inode; int /*<<< orphan*/  name_len; } ;
typedef  void* BOOL ;

/* Variables and functions */
 int ENOSPC ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 void* FALSE ; 
 void* TRUE ; 
 int FUNC2 (struct ext4_xattr_item*,size_t) ; 

__attribute__((used)) static int FUNC3(struct ext4_xattr_ref *xattr_ref,
				  struct ext4_xattr_item *item,
				  size_t new_data_size)
{
	int ret = 0;
	BOOL to_inode = FALSE, to_block = FALSE;
	size_t old_data_size = item->data_size;
	size_t orig_room_size = item->in_inode ?
		xattr_ref->inode_size_rem :
		xattr_ref->block_size_rem;

	/*
	 * Check if we can hold this entry in both in-inode and
	 * on-block form
	 *
	 * More complicated case: we do not allow entries stucking in
	 * the middle between in-inode space and on-block space, so
	 * the entry has to stay in either inode space or block space.
	 */
	if (item->in_inode) {
		if (xattr_ref->inode_size_rem +
			       FUNC1(old_data_size) <
			       FUNC1(new_data_size)) {
			if (xattr_ref->block_size_rem <
				       FUNC1(new_data_size) +
				       FUNC0(item->name_len))
				return -ENOSPC;

			to_block = TRUE;
		}
	} else {
		if (xattr_ref->block_size_rem +
				FUNC1(old_data_size) <
				FUNC1(new_data_size)) {
			if (xattr_ref->inode_size_rem <
					FUNC1(new_data_size) +
					FUNC0(item->name_len))
				return -ENOSPC;

			to_inode = TRUE;
		}
	}
	ret = FUNC2(item, new_data_size);
	if (ret)
		return ret;

	xattr_ref->ea_size =
	    xattr_ref->ea_size -
	    FUNC1(old_data_size) +
	    FUNC1(new_data_size);

	/*
	 * This entry may originally lie in inode space or block space,
	 * and it is going to be transferred to another place.
	 */
	if (to_block) {
		xattr_ref->inode_size_rem +=
			FUNC1(old_data_size) +
			FUNC0(item->name_len);
		xattr_ref->block_size_rem -=
			FUNC1(new_data_size) +
			FUNC0(item->name_len);
		item->in_inode = FALSE;
	} else if (to_inode) {
		xattr_ref->block_size_rem +=
			FUNC1(old_data_size) +
			FUNC0(item->name_len);
		xattr_ref->inode_size_rem -=
			FUNC1(new_data_size) +
			FUNC0(item->name_len);
		item->in_inode = TRUE;
	} else {
		/*
		 * No need to transfer as there is enough space for the entry
		 * to stay in inode space or block space it used to be.
		 */
		orig_room_size +=
			FUNC1(old_data_size);
		orig_room_size -=
			FUNC1(new_data_size);
		if (item->in_inode)
			xattr_ref->inode_size_rem = orig_room_size;
		else
			xattr_ref->block_size_rem = orig_room_size;

	}
	xattr_ref->dirty = TRUE;
	return ret;
}