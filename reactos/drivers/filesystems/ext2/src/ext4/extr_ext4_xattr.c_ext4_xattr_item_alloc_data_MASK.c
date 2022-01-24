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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct ext4_xattr_item *item,
				      const void *orig_data, size_t data_size)
{
	void *data = NULL;
	FUNC0(!item->data);
	data = FUNC1(data_size, GFP_NOFS);
	if (!data)
		return -ENOMEM;

	if (orig_data)
		FUNC2(data, orig_data, data_size);

	item->data = data;
	item->data_size = data_size;
	return 0;
}