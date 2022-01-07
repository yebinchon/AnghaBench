
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int posix_mode_t ;


 int S_IFDIR ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int XA_ATTR_DIRECTORY ;
 int XA_PERM_RGRP ;
 int XA_PERM_ROTH ;
 int XA_PERM_RUSR ;
 int XA_PERM_XGRP ;
 int XA_PERM_XOTH ;
 int XA_PERM_XUSR ;

posix_mode_t
iso9660_get_posix_filemode_from_xa(uint16_t i_perms)
{
  posix_mode_t mode = 0;

  if (i_perms & XA_PERM_RUSR) mode |= S_IRUSR;
  if (i_perms & XA_PERM_XUSR) mode |= S_IXUSR;
  if (i_perms & XA_ATTR_DIRECTORY) mode |= S_IFDIR;

  return mode;
}
