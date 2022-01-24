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
struct ext4_xattr_ref {int /*<<< orphan*/  ea_size; int /*<<< orphan*/  inode_size_rem; TYPE_2__* OnDiskInode; TYPE_1__* fs; } ;
struct ext4_xattr_item {scalar_t__ name_len; int /*<<< orphan*/  data_size; int /*<<< orphan*/  in_inode; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_size; scalar_t__ e_name_len; int /*<<< orphan*/  e_name_index; } ;
struct TYPE_4__ {int i_extra_isize; } ;
struct TYPE_3__ {int InodeSize; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_entry*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 char* FUNC4 (struct ext4_xattr_entry*) ; 
 struct ext4_xattr_entry* FUNC5 (struct ext4_xattr_entry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC7 (struct ext4_xattr_ref*,struct ext4_xattr_entry*,int /*<<< orphan*/ ) ; 
 struct ext4_xattr_item* FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC9 (struct ext4_xattr_item*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ext4_xattr_item*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_xattr_ref*,struct ext4_xattr_item*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ext4_xattr_ref *xattr_ref)
{
	void *data;
	size_t size_rem;
	int ret = 0;
	struct ext4_xattr_ibody_header *header = NULL;
	struct ext4_xattr_entry *entry = NULL;
	int inode_size = xattr_ref->fs->InodeSize;

	header = FUNC1(xattr_ref->OnDiskInode);
	entry = FUNC0(header);

	size_rem = inode_size - EXT4_GOOD_OLD_INODE_SIZE -
		   xattr_ref->OnDiskInode->i_extra_isize;
	for (; size_rem > 0 && !FUNC2(entry);
	     entry = FUNC5(entry),
	     size_rem -= FUNC3(entry->e_name_len)) {
		struct ext4_xattr_item *item;
		char *e_name = FUNC4(entry);

		data = FUNC7(xattr_ref, entry, TRUE);
		if (!data) {
			ret = -EIO;
			goto Finish;
		}

		item = FUNC8(entry->e_name_index, e_name,
					     (size_t)entry->e_name_len);
		if (!item) {
			ret = -ENOMEM;
			goto Finish;
		}
		if (FUNC9(
			item, data, FUNC12(entry->e_value_size)) != 0) {
			FUNC10(item);
			ret = -ENOMEM;
			goto Finish;
		}
		item->in_inode = TRUE;
		FUNC11(xattr_ref, item);
		xattr_ref->inode_size_rem -=
			FUNC6(item->data_size) +
			FUNC3(item->name_len);
		xattr_ref->ea_size += FUNC6(item->data_size) +
				      FUNC3(item->name_len);
	}

Finish:
	return ret;
}