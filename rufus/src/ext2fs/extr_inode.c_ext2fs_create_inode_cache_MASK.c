#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_cache_ent {int dummy; } ;
struct ext2_inode_cache {int dummy; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
struct TYPE_10__ {TYPE_2__* inode; } ;
struct TYPE_9__ {int cache_last; unsigned int cache_size; int refcount; TYPE_4__* cache; scalar_t__ buffer_blk; struct TYPE_9__* buffer; } ;
struct TYPE_8__ {int blocksize; TYPE_2__* icache; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (unsigned int,int,TYPE_4__**) ; 
 scalar_t__ FUNC4 (int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

errcode_t FUNC6(ext2_filsys fs, unsigned int cache_size)
{
	unsigned	i;
	errcode_t	retval;

	if (fs->icache)
		return 0;
	retval = FUNC4(sizeof(struct ext2_inode_cache), &fs->icache);
	if (retval)
		return retval;

	FUNC5(fs->icache, 0, sizeof(struct ext2_inode_cache));
	retval = FUNC4(fs->blocksize, &fs->icache->buffer);
	if (retval)
		goto errout;

	fs->icache->buffer_blk = 0;
	fs->icache->cache_last = -1;
	fs->icache->cache_size = cache_size;
	fs->icache->refcount = 1;
	retval = FUNC3(fs->icache->cache_size,
				  sizeof(struct ext2_inode_cache_ent),
				  &fs->icache->cache);
	if (retval)
		goto errout;

	for (i = 0; i < fs->icache->cache_size; i++) {
		retval = FUNC4(FUNC0(fs->super),
					&fs->icache->cache[i].inode);
		if (retval)
			goto errout;
	}

	FUNC1(fs);
	return 0;
errout:
	FUNC2(fs->icache);
	fs->icache = 0;
	return retval;
}