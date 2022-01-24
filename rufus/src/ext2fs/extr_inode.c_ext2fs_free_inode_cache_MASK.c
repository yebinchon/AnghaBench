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
struct ext2_inode_cache {unsigned int cache_size; scalar_t__ buffer_blk; struct ext2_inode_cache* cache; struct ext2_inode_cache* inode; struct ext2_inode_cache* buffer; scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2_inode_cache**) ; 

void FUNC1(struct ext2_inode_cache *icache)
{
	unsigned i;

	if (--icache->refcount)
		return;
	if (icache->buffer)
		FUNC0(&icache->buffer);
	for (i = 0; i < icache->cache_size; i++)
		FUNC0(&icache->cache[i].inode);
	if (icache->cache)
		FUNC0(&icache->cache);
	icache->buffer_blk = 0;
	FUNC0(&icache);
}