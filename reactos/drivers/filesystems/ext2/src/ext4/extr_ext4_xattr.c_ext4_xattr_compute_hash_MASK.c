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
struct ext4_xattr_header {int dummy; } ;
struct ext4_xattr_entry {int e_name_len; scalar_t__ e_value_block; scalar_t__ e_value_size; int /*<<< orphan*/  e_hash; int /*<<< orphan*/  e_value_offs; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 char* FUNC0 (struct ext4_xattr_entry*) ; 
 int EXT4_XATTR_PAD_BITS ; 
 int EXT4_XATTR_ROUND ; 
 int NAME_HASH_SHIFT ; 
 int VALUE_HASH_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct ext4_xattr_header *header,
					   struct ext4_xattr_entry *entry)
{
	__u32 hash = 0;
	char *name = FUNC0(entry);
	int n;

	for (n = 0; n < entry->e_name_len; n++) {
		hash = (hash << NAME_HASH_SHIFT) ^
		       (hash >> (8 * sizeof(hash) - NAME_HASH_SHIFT)) ^ *name++;
	}

	if (entry->e_value_block == 0 && entry->e_value_size != 0) {
		__le32 *value =
		    (__le32 *)((char *)header + FUNC2(entry->e_value_offs));
		for (n = (FUNC3(entry->e_value_size) + EXT4_XATTR_ROUND) >>
			 EXT4_XATTR_PAD_BITS;
		     n; n--) {
			hash = (hash << VALUE_HASH_SHIFT) ^
			       (hash >> (8 * sizeof(hash) - VALUE_HASH_SHIFT)) ^
			       FUNC3(*value++);
		}
	}
	entry->e_hash = FUNC1(hash);
}