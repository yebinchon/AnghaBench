
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int zfs_handle_t ;
typedef int uint64_t ;


 int get_numeric_property (int *,int ,int *,char**,int *) ;

uint64_t
zfs_prop_get_int(zfs_handle_t *zhp, zfs_prop_t prop)
{
 char *source;
 uint64_t val = 0;

 (void) get_numeric_property(zhp, prop, ((void*)0), &source, &val);

 return (val);
}
