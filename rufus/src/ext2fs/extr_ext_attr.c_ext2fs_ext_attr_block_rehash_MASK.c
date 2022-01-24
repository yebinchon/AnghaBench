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
struct ext2_ext_attr_header {int h_hash; } ;
struct ext2_ext_attr_entry {int e_hash; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int __u32 ;

/* Variables and functions */
 int BLOCK_HASH_SHIFT ; 
 struct ext2_ext_attr_entry* FUNC0 (struct ext2_ext_attr_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2_ext_attr_entry*) ; 

void FUNC2(struct ext2_ext_attr_header *header,
				  struct ext2_ext_attr_entry *end)
{
	struct ext2_ext_attr_entry *here;
	__u32 hash = 0;

	here = (struct ext2_ext_attr_entry *)(header+1);
	while (here < end && !FUNC1(here)) {
		if (!here->e_hash) {
			/* Block is not shared if an entry's hash value == 0 */
			hash = 0;
			break;
		}
		hash = (hash << BLOCK_HASH_SHIFT) ^
		       (hash >> (8*sizeof(hash) - BLOCK_HASH_SHIFT)) ^
		       here->e_hash;
		here = FUNC0(here);
	}
	header->h_hash = hash;
}