
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;


 scalar_t__ dir_namei (int ,int ,int ,char const*,size_t,int,char*,char const**,int*,int *) ;
 scalar_t__ ext2fs_lookup (int ,int ,char const*,int,char*,int *) ;
 scalar_t__ follow_link (int ,int ,int ,int ,int,char*,int *) ;
 int printf (char*,int,int ,...) ;

__attribute__((used)) static errcode_t open_namei(ext2_filsys fs, ext2_ino_t root, ext2_ino_t base,
       const char *pathname, size_t pathlen, int follow,
       int link_count, char *buf, ext2_ino_t *res_inode)
{
 const char *base_name;
 int namelen;
 ext2_ino_t dir, inode;
 errcode_t retval;





 retval = dir_namei(fs, root, base, pathname, pathlen,
      link_count, buf, &base_name, &namelen, &dir);
 if (retval) return retval;
 if (!namelen) {
  *res_inode=dir;
  return 0;
 }
 retval = ext2fs_lookup (fs, dir, base_name, namelen, buf, &inode);
 if (retval)
  return retval;
 if (follow) {
  retval = follow_link(fs, root, dir, inode, link_count,
         buf, &inode);
  if (retval)
   return retval;
 }




 *res_inode = inode;
 return 0;
}
