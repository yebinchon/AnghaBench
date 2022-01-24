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
struct ext2_xattr_handle {int capacity; scalar_t__ ibody_count; scalar_t__ count; struct ext2_xattr* attrs; } ;
struct ext2_xattr {scalar_t__ value; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 

__attribute__((used)) static void FUNC1(struct ext2_xattr_handle *h)
{
	struct ext2_xattr *a = h->attrs;
	int i;

	for (i = 0; i < h->capacity; i++) {
		if (a[i].name)
			FUNC0(&a[i].name);
		if (a[i].value)
			FUNC0(&a[i].value);
	}
	h->count = 0;
	h->ibody_count = 0;
}