
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dm_get_underlying_path (char const*) ;
 int free (char*) ;
 char* realpath (char const*,int *) ;
 char* zfs_strip_partition_path (char*) ;

char *
zfs_get_underlying_path(const char *dev_name)
{
 char *name = ((void*)0);
 char *tmp;

 if (dev_name == ((void*)0))
  return (((void*)0));

 tmp = dm_get_underlying_path(dev_name);


 if (tmp == ((void*)0))
  tmp = realpath(dev_name, ((void*)0));

 if (tmp != ((void*)0)) {
  name = zfs_strip_partition_path(tmp);
  free(tmp);
 }

 return (name);
}
