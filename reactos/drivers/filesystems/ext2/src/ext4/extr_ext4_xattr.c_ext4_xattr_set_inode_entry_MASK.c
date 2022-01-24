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
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_size; scalar_t__ e_value_block; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_name_index; scalar_t__ e_name_len; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_xattr_ibody_header*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ext4_xattr_item *item,
			   struct ext4_xattr_ibody_header *ibody_header,
			   struct ext4_xattr_entry *entry, void *ibody_data_ptr)
{
	entry->e_name_len = (__u8)item->name_len;
	entry->e_name_index = item->name_index;
	entry->e_value_offs =
	   FUNC1((char *)ibody_data_ptr - (char *)FUNC0(ibody_header));
	entry->e_value_block = 0;
	entry->e_value_size = FUNC2(item->data_size);
}