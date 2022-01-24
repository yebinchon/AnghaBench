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
struct ext4_xattr_ref {int dummy; } ;
struct ext4_xattr_item {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EEXIST ; 
 struct ext4_xattr_item* FUNC0 (struct ext4_xattr_ref*,int /*<<< orphan*/ ,char const*,size_t,void const*,size_t,int*) ; 
 struct ext4_xattr_item* FUNC1 (struct ext4_xattr_ref*,int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC2(struct ext4_xattr_ref *ref, __u8 name_index,
	const char *name, size_t name_len, const void *data,
	size_t data_size)
{
	int ret = 0;
	struct ext4_xattr_item *item =
		FUNC1(ref, name_index, name, name_len);
	if (item) {
		ret = -EEXIST;
		goto Finish;
	}
	item = FUNC0(ref, name_index, name, name_len,
		data, data_size, &ret);
Finish:
	return ret;
}