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
struct ext4_xattr_ref {int /*<<< orphan*/  block_bh; } ;
struct ext4_xattr_header {void* h_blocks; void* h_refcount; int /*<<< orphan*/  h_magic; } ;

/* Variables and functions */
 struct ext4_xattr_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_XATTR_MAGIC ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_header*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ext4_xattr_ref *xattr_ref)
{
	struct ext4_xattr_header *block_header = NULL;
	block_header = FUNC0(xattr_ref->block_bh);

	FUNC2(block_header, 0, sizeof(struct ext4_xattr_header));
	block_header->h_magic = EXT4_XATTR_MAGIC;
	block_header->h_refcount = FUNC1(1);
	block_header->h_blocks = FUNC1(1);
}