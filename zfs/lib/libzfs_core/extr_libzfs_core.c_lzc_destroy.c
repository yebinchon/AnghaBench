
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_DESTROY ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_destroy(const char *fsname)
{
 int error;
 nvlist_t *args = fnvlist_alloc();
 error = lzc_ioctl(ZFS_IOC_DESTROY, fsname, args, ((void*)0));
 nvlist_free(args);
 return (error);
}
