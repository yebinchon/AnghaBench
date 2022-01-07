
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int file_type; int flags; } ;
struct TYPE_5__ {TYPE_1__ icb_tag; int permissions; } ;
typedef TYPE_2__ udf_file_entry_t ;
typedef int udf_dirent_t ;
typedef int mode_t ;


 int FE_PERM_G_EXEC ;
 int FE_PERM_G_READ ;
 int FE_PERM_G_WRITE ;
 int FE_PERM_O_EXEC ;
 int FE_PERM_O_READ ;
 int FE_PERM_O_WRITE ;
 int FE_PERM_U_EXEC ;
 int FE_PERM_U_READ ;
 int FE_PERM_U_WRITE ;






 int ICBTAG_FLAG_SETGID ;
 int ICBTAG_FLAG_SETUID ;
 int ICBTAG_FLAG_STICKY ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 scalar_t__ udf_get_file_entry (int const*,TYPE_2__*) ;
 int uint16_from_le (int ) ;
 int uint32_from_le (int ) ;

mode_t
udf_get_posix_filemode(const udf_dirent_t *p_udf_dirent)
{
  udf_file_entry_t udf_fe;
  mode_t mode = 0;

  if (udf_get_file_entry(p_udf_dirent, &udf_fe)) {
    uint32_t i_perms;





    i_perms = uint32_from_le(udf_fe.permissions);

    if (i_perms & FE_PERM_U_READ) mode |= S_IRUSR;
    if (i_perms & FE_PERM_U_WRITE) mode |= S_IWUSR;
    if (i_perms & FE_PERM_U_EXEC) mode |= S_IXUSR;
    switch (udf_fe.icb_tag.file_type) {
    case 131:
      mode |= S_IFDIR;
      break;
    case 130:
      mode |= S_IFREG;
      break;





    case 132:
      mode |= S_IFCHR;
      break;





    case 133:
      mode |= S_IFBLK;
      break;
    default: ;
    };






  }

  return mode;

}
