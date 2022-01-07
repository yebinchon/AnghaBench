
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode_cache {unsigned int cache_size; scalar_t__ buffer_blk; struct ext2_inode_cache* cache; struct ext2_inode_cache* inode; struct ext2_inode_cache* buffer; scalar_t__ refcount; } ;


 int ext2fs_free_mem (struct ext2_inode_cache**) ;

void ext2fs_free_inode_cache(struct ext2_inode_cache *icache)
{
 unsigned i;

 if (--icache->refcount)
  return;
 if (icache->buffer)
  ext2fs_free_mem(&icache->buffer);
 for (i = 0; i < icache->cache_size; i++)
  ext2fs_free_mem(&icache->cache[i].inode);
 if (icache->cache)
  ext2fs_free_mem(&icache->cache);
 icache->buffer_blk = 0;
 ext2fs_free_mem(&icache);
}
