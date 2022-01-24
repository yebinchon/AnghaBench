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
struct ext2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int blk64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ext2_inode*,int) ; 

__attribute__((used)) static errcode_t FUNC3(ext2_filsys fs, struct ext2_inode *inode,
			     blk64_t blk, blk64_t len)
{
	blk64_t	clusters;

	clusters = (len + FUNC0(fs) - 1) /
		   FUNC0(fs);
	FUNC1(fs, blk,
			clusters * FUNC0(fs), +1);
	return FUNC2(fs, inode, clusters);
}