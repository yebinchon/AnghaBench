
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_GET_HOLDS ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

int
lzc_get_holds(const char *snapname, nvlist_t **holdsp)
{
 return (lzc_ioctl(ZFS_IOC_GET_HOLDS, snapname, ((void*)0), holdsp));
}
