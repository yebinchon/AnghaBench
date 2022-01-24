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
struct ext4_xattr_item {size_t data_size; void* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

__attribute__((used)) static int FUNC3(struct ext4_xattr_item *item,
				       size_t new_data_size)
{
	if (new_data_size != item->data_size) {
		void *new_data;
		new_data = FUNC1(new_data_size, GFP_NOFS);
		if (!new_data)
			return -ENOMEM;

		FUNC2(new_data, item->data, item->data_size);
		FUNC0(item->data);

		item->data = new_data;
		item->data_size = new_data_size;
	}
	return 0;
}