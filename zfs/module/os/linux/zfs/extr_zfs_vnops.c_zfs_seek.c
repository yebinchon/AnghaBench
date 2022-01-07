
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
typedef scalar_t__ offset_t ;


 int EINVAL ;
 scalar_t__ MAXOFFSET_T ;
 scalar_t__ S_ISDIR (int ) ;

int
zfs_seek(struct inode *ip, offset_t ooff, offset_t *noffp)
{
 if (S_ISDIR(ip->i_mode))
  return (0);
 return ((*noffp < 0 || *noffp > MAXOFFSET_T) ? EINVAL : 0);
}
