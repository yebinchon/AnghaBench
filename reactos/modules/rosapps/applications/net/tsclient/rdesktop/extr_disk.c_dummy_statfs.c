
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_statfs_t {int f_blocks; int f_bfree; int f_bsize; int f_namelen; int f_namemax; } ;



__attribute__((used)) static int
dummy_statfs(struct dummy_statfs_t *buf)
{
 buf->f_blocks = 262144;
 buf->f_bfree = 131072;
 buf->f_bsize = 512;
 buf->f_namelen = 255;
 buf->f_namemax = 255;

 return 0;
}
