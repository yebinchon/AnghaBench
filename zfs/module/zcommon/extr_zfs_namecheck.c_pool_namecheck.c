
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;


 int NAME_ERR_DISKLIKE ;
 int NAME_ERR_INVALCHAR ;
 int NAME_ERR_NOLETTER ;
 int NAME_ERR_RESERVED ;
 int NAME_ERR_TOOLONG ;
 char const* ORIGIN_DIR_NAME ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int valid_char (char const) ;

int
pool_namecheck(const char *pool, namecheck_err_t *why, char *what)
{
 const char *c;
 if (strlen(pool) >= (ZFS_MAX_DATASET_NAME_LEN - 2 -
     strlen(ORIGIN_DIR_NAME) * 2)) {
  if (why)
   *why = NAME_ERR_TOOLONG;
  return (-1);
 }

 c = pool;
 while (*c != '\0') {
  if (!valid_char(*c)) {
   if (why) {
    *why = NAME_ERR_INVALCHAR;
    *what = *c;
   }
   return (-1);
  }
  c++;
 }

 if (!(*pool >= 'a' && *pool <= 'z') &&
     !(*pool >= 'A' && *pool <= 'Z')) {
  if (why)
   *why = NAME_ERR_NOLETTER;
  return (-1);
 }

 if (strcmp(pool, "mirror") == 0 || strcmp(pool, "raidz") == 0) {
  if (why)
   *why = NAME_ERR_RESERVED;
  return (-1);
 }

 if (pool[0] == 'c' && (pool[1] >= '0' && pool[1] <= '9')) {
  if (why)
   *why = NAME_ERR_DISKLIKE;
  return (-1);
 }

 return (0);
}
