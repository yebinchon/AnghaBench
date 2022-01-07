
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 char* dm_get_underlying_path (char const*) ;
 int free (char*) ;

boolean_t
zfs_dev_is_dm(const char *dev_name)
{

 char *tmp;
 tmp = dm_get_underlying_path(dev_name);
 if (tmp == ((void*)0))
  return (B_FALSE);

 free(tmp);
 return (B_TRUE);
}
