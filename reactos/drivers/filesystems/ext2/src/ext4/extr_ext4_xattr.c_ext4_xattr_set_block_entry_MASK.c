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
struct ext4_xattr_item {int /*<<< orphan*/  data_size; int /*<<< orphan*/  name_index; scalar_t__ name_len; } ;
struct ext4_xattr_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_size; scalar_t__ e_value_block; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_name_index; scalar_t__ e_name_len; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ext4_xattr_item *item,
				       struct ext4_xattr_header *block_header,
				       struct ext4_xattr_entry *block_entry,
				       void *block_data_ptr)
{
	block_entry->e_name_len = (__u8)item->name_len;
	block_entry->e_name_index = item->name_index;
	block_entry->e_value_offs =
	    FUNC0((char *)block_data_ptr - (char *)block_header);
	block_entry->e_value_block = 0;
	block_entry->e_value_size = FUNC1(item->data_size);
}