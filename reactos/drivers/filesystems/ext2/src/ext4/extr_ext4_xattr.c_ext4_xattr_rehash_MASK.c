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
struct ext4_xattr_header {int /*<<< orphan*/  h_hash; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_hash; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int __u32 ;

/* Variables and functions */
 int BLOCK_HASH_SHIFT ; 
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_entry*) ; 
 struct ext4_xattr_entry* FUNC2 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_xattr_header*,struct ext4_xattr_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ext4_xattr_header *header,
			      struct ext4_xattr_entry *entry)
{
	struct ext4_xattr_entry *here;
	__u32 hash = 0;

	FUNC4(header, entry);
	here = FUNC0(header + 1);
	while (!FUNC1(here)) {
		if (!here->e_hash) {
			/* Block is not shared if an entry's hash value == 0 */
			hash = 0;
			break;
		}
		hash = (hash << BLOCK_HASH_SHIFT) ^
		       (hash >> (8 * sizeof(hash) - BLOCK_HASH_SHIFT)) ^
		       FUNC5(here->e_hash);
		here = FUNC2(here);
	}
	header->h_hash = FUNC3(hash);
}