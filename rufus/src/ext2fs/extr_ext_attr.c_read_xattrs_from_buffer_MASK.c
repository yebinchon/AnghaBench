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
struct ext2_xattr_handle {scalar_t__ count; scalar_t__ capacity; scalar_t__ ino; TYPE_1__* fs; struct ext2_xattr* attrs; } ;
struct ext2_xattr {scalar_t__ ea_ino; unsigned int value_len; scalar_t__ value; scalar_t__ name; } ;
struct ext2_inode_large {scalar_t__ i_generation; } ;
struct ext2_inode {int i_flags; scalar_t__ i_links_count; scalar_t__ i_mtime; scalar_t__ i_generation; } ;
struct ext2_ext_attr_entry {unsigned int e_name_len; scalar_t__ e_value_inum; unsigned int e_value_size; unsigned int e_value_offs; scalar_t__ e_hash; int /*<<< orphan*/  e_name_index; } ;
typedef  int /*<<< orphan*/  ext2_file_t ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  super; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_BAD_EA_BLOCK_NUM ; 
 scalar_t__ EXT2_ET_BAD_EA_HASH ; 
 scalar_t__ EXT2_ET_EA_BAD_NAME_LEN ; 
 scalar_t__ EXT2_ET_EA_BAD_VALUE_OFFSET ; 
 scalar_t__ EXT2_ET_EA_BAD_VALUE_SIZE ; 
 scalar_t__ EXT2_ET_EA_INODE_CORRUPTED ; 
 struct ext2_ext_attr_entry* FUNC0 (struct ext2_ext_attr_entry*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2_ext_attr_entry*) ; 
 int EXT4_EA_INODE_FL ; 
 int EXT4_INLINE_DATA_FL ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct ext2_ext_attr_entry*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ext2_inode* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned int,scalar_t__*) ; 
 scalar_t__ FUNC10 (unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*,scalar_t__,struct ext2_inode*) ; 
 scalar_t__ FUNC13 (struct ext2_xattr_handle*,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char const*,unsigned int) ; 
 unsigned int FUNC16 (char const*) ; 

__attribute__((used)) static errcode_t FUNC17(struct ext2_xattr_handle *handle,
					 struct ext2_inode_large *inode,
					 struct ext2_ext_attr_entry *entries,
					 unsigned int storage_size,
					 char *value_start)
{
	struct ext2_xattr *x;
	struct ext2_ext_attr_entry *entry, *end;
	const char *prefix;
	unsigned int remain, prefix_len;
	errcode_t err;
	unsigned int values_size = storage_size +
			((char *)entries - value_start);

	/* find the end */
	end = entries;
	remain = storage_size;
	while (remain >= sizeof(struct ext2_ext_attr_entry) &&
	       !FUNC2(end)) {

		/* header eats this space */
		remain -= sizeof(struct ext2_ext_attr_entry);

		/* is attribute name valid? */
		if (FUNC1(end->e_name_len) > remain)
			return EXT2_ET_EA_BAD_NAME_LEN;

		/* attribute len eats this space */
		remain -= FUNC1(end->e_name_len);
		end = FUNC0(end);
	}

	entry = entries;
	remain = storage_size;
	while (remain >= sizeof(struct ext2_ext_attr_entry) &&
	       !FUNC2(entry)) {

		/* Allocate space for more attrs? */
		if (handle->count == handle->capacity) {
			err = FUNC13(handle, 4);
			if (err)
				return err;
		}

		x = handle->attrs + handle->count;

		/* header eats this space */
		remain -= sizeof(struct ext2_ext_attr_entry);

		/* attribute len eats this space */
		remain -= FUNC1(entry->e_name_len);

		/* Extract name */
		prefix = FUNC14(entry->e_name_index);
		prefix_len = (prefix ? FUNC16(prefix) : 0);
		err = FUNC10(entry->e_name_len + prefix_len + 1,
					 &x->name);
		if (err)
			return err;
		if (prefix)
			FUNC15(x->name, prefix, prefix_len);
		if (entry->e_name_len)
			FUNC15(x->name + prefix_len,
			       (char *)entry + sizeof(*entry),
			       entry->e_name_len);

		/* Check & copy value */
		if (!FUNC11(handle->fs->super) &&
		    entry->e_value_inum != 0)
			return EXT2_ET_BAD_EA_BLOCK_NUM;

		if (entry->e_value_inum == 0) {
			if (entry->e_value_size > remain)
				return EXT2_ET_EA_BAD_VALUE_SIZE;

			if (entry->e_value_offs + entry->e_value_size > values_size)
				return EXT2_ET_EA_BAD_VALUE_OFFSET;

			if (entry->e_value_size > 0 &&
			    value_start + entry->e_value_offs <
			    (char *)end + sizeof(__u32))
				return EXT2_ET_EA_BAD_VALUE_OFFSET;

			remain -= entry->e_value_size;

			err = FUNC9(entry->e_value_size, &x->value);
			if (err)
				return err;
			FUNC15(x->value, value_start + entry->e_value_offs,
			       entry->e_value_size);
		} else {
			struct ext2_inode *ea_inode;
			ext2_file_t ea_file;

			if (entry->e_value_offs != 0)
				return EXT2_ET_EA_BAD_VALUE_OFFSET;

			if (entry->e_value_size > (64 * 1024))
				return EXT2_ET_EA_BAD_VALUE_SIZE;

			err = FUNC9(entry->e_value_size, &x->value);
			if (err)
				return err;

			err = FUNC7(handle->fs, entry->e_value_inum,
					       0, &ea_file);
			if (err)
				return err;

			ea_inode = FUNC5(ea_file);
			if ((ea_inode->i_flags & EXT4_INLINE_DATA_FL) ||
			    !(ea_inode->i_flags & EXT4_EA_INODE_FL) ||
			    ea_inode->i_links_count == 0)
				err = EXT2_ET_EA_INODE_CORRUPTED;
			else if (FUNC6(ea_file) !=
			    entry->e_value_size)
				err = EXT2_ET_EA_BAD_VALUE_SIZE;
			else
				err = FUNC8(ea_file, x->value,
						       entry->e_value_size, 0);
			FUNC4(ea_file);
			if (err)
				return err;
		}

		x->ea_ino = entry->e_value_inum;
		x->value_len = entry->e_value_size;

		/* e_hash may be 0 in older inode's ea */
		if (entry->e_hash != 0) {
			__u32 hash;
			void *data = (entry->e_value_inum != 0) ?
					0 : value_start + entry->e_value_offs;

			err = FUNC3(handle->fs, entry,
							  data, &hash);
			if (err)
				return err;
			if (entry->e_hash != hash) {
				struct ext2_inode child;

				/* Check whether this is an old Lustre-style
				 * ea_inode reference.
				 */
				err = FUNC12(handle->fs,
							entry->e_value_inum,
							&child);
				if (err)
					return err;
				if (child.i_mtime != handle->ino ||
				    child.i_generation != inode->i_generation)
					return EXT2_ET_BAD_EA_HASH;
			}
		}

		handle->count++;
		entry = FUNC0(entry);
	}

	return 0;
}