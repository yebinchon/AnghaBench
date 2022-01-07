
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_GET_BOOKMARK_PROPS ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

int
lzc_get_bookmark_props(const char *bookmark, nvlist_t **props)
{
 int error;

 nvlist_t *innvl = fnvlist_alloc();
 error = lzc_ioctl(ZFS_IOC_GET_BOOKMARK_PROPS, bookmark, innvl, props);
 fnvlist_free(innvl);

 return (error);
}
