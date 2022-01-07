
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int memset (struct stat64*,int ,int) ;
 scalar_t__ stat64 (char*,struct stat64*) ;
 int strlcpy (char*,char const*,size_t) ;
 scalar_t__ zfs_dev_is_whole_disk (char*) ;
 int zfs_resolve_shortname (char const*,char*,size_t) ;

__attribute__((used)) static int
is_shorthand_path(const char *arg, char *path, size_t path_size,
    struct stat64 *statbuf, boolean_t *wholedisk)
{
 int error;

 error = zfs_resolve_shortname(arg, path, path_size);
 if (error == 0) {
  *wholedisk = zfs_dev_is_whole_disk(path);
  if (*wholedisk || (stat64(path, statbuf) == 0))
   return (0);
 }

 strlcpy(path, arg, path_size);
 memset(statbuf, 0, sizeof (*statbuf));
 *wholedisk = B_FALSE;

 return (error);
}
