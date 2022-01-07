
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int blkid_cache ;


 char* blkid_get_tag_value (int ,char*,char const*) ;
 int check_file (char const*,int,int ) ;
 int free (char*) ;
 int gettext (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int vdev_error (int ,char const*,char*) ;

__attribute__((used)) static int
check_slice(const char *path, blkid_cache cache, int force, boolean_t isspare)
{
 int err;
 char *value;


 value = blkid_get_tag_value(cache, "TYPE", path);
 if (value == ((void*)0))
  return (0);






 if (strcmp(value, "zfs_member") == 0) {
  err = check_file(path, force, isspare);
 } else {
  if (force) {
   err = 0;
  } else {
   err = -1;
   vdev_error(gettext("%s contains a filesystem of "
       "type '%s'\n"), path, value);
  }
 }

 free(value);

 return (err);
}
