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
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int FUNC0 (struct ext4_xattr_ref*,int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC1(struct ext4_xattr_ref *ref, __u8 name_index,
			 const char *name, size_t name_len)
{
	return FUNC0(ref, name_index, name, name_len);
}