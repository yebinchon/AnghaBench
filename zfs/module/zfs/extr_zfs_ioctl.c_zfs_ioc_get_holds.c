
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dsl_dataset_get_holds (char const*,int *) ;

__attribute__((used)) static int
zfs_ioc_get_holds(const char *snapname, nvlist_t *args, nvlist_t *outnvl)
{
 return (dsl_dataset_get_holds(snapname, outnvl));
}
