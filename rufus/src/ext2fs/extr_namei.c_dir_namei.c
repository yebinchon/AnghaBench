
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;


 scalar_t__ ext2fs_lookup (int ,int ,char const*,int,char*,int *) ;
 scalar_t__ follow_link (int ,int ,int ,int ,int,char*,int *) ;

__attribute__((used)) static errcode_t dir_namei(ext2_filsys fs, ext2_ino_t root, ext2_ino_t dir,
      const char *pathname, int pathlen,
      int link_count, char *buf,
      const char **name, int *namelen,
      ext2_ino_t *res_inode)
{
 char c;
 const char *thisname;
 int len;
 ext2_ino_t inode;
 errcode_t retval;

 if ((c = *pathname) == '/') {
         dir = root;
  pathname++;
  pathlen--;
 }
 while (1) {
         thisname = pathname;
  for (len=0; --pathlen >= 0;len++) {
   c = *(pathname++);
   if (c == '/')
    break;
  }
  if (pathlen < 0)
   break;
  retval = ext2fs_lookup (fs, dir, thisname, len, buf, &inode);
  if (retval) return retval;
         retval = follow_link (fs, root, dir, inode,
          link_count, buf, &dir);
         if (retval) return retval;
     }
 *name = thisname;
 *namelen = len;
 *res_inode = dir;
 return 0;
}
