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
struct ext2_xattr_handle {struct ext2_xattr_handle* attrs; } ;
typedef  int /*<<< orphan*/  errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2_xattr_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EA_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (struct ext2_xattr_handle**) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2_xattr_handle*) ; 

errcode_t FUNC3(struct ext2_xattr_handle **handle)
{
	struct ext2_xattr_handle *h = *handle;

	FUNC0(h, EXT2_ET_MAGIC_EA_HANDLE);
	FUNC2(h);
	FUNC1(&h->attrs);
	FUNC1(handle);
	return 0;
}