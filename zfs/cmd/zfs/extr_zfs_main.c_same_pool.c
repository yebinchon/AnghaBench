
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int B_FALSE ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* zfs_get_name (int *) ;

__attribute__((used)) static int
same_pool(zfs_handle_t *zhp, const char *name)
{
 int len1 = strcspn(name, "/@");
 const char *zhname = zfs_get_name(zhp);
 int len2 = strcspn(zhname, "/@");

 if (len1 != len2)
  return (B_FALSE);
 return (strncmp(name, zhname, len1) == 0);
}
