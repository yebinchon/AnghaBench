
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int ZFS_IOC_DESTROY_BOOKMARKS ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int lzc_ioctl (int ,char*,int *,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,int ,int) ;

int
lzc_destroy_bookmarks(nvlist_t *bmarks, nvlist_t **errlist)
{
 nvpair_t *elem;
 int error;
 char pool[ZFS_MAX_DATASET_NAME_LEN];


 elem = nvlist_next_nvpair(bmarks, ((void*)0));
 if (elem == ((void*)0))
  return (0);
 (void) strlcpy(pool, nvpair_name(elem), sizeof (pool));
 pool[strcspn(pool, "/#")] = '\0';

 error = lzc_ioctl(ZFS_IOC_DESTROY_BOOKMARKS, pool, bmarks, errlist);

 return (error);
}
