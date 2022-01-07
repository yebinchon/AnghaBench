
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;


 int NAME_ERR_LEADING_SLASH ;
 int NAME_ERR_TOOLONG ;
 int ZFS_MAX_DATASET_NAME_LEN ;

int
mountpoint_namecheck(const char *path, namecheck_err_t *why)
{
 const char *start, *end;
 if (path == ((void*)0) || *path != '/') {
  if (why)
   *why = NAME_ERR_LEADING_SLASH;
  return (-1);
 }


 start = &path[1];
 do {
  end = start;
  while (*end != '/' && *end != '\0')
   end++;

  if (end - start >= ZFS_MAX_DATASET_NAME_LEN) {
   if (why)
    *why = NAME_ERR_TOOLONG;
   return (-1);
  }
  start = end + 1;

 } while (*end != '\0');

 return (0);
}
