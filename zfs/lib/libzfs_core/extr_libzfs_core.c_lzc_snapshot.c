
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int ZFS_IOC_SNAPSHOT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char*,int *,int **) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,int ,int) ;

int
lzc_snapshot(nvlist_t *snaps, nvlist_t *props, nvlist_t **errlist)
{
 nvpair_t *elem;
 nvlist_t *args;
 int error;
 char pool[ZFS_MAX_DATASET_NAME_LEN];

 *errlist = ((void*)0);


 elem = nvlist_next_nvpair(snaps, ((void*)0));
 if (elem == ((void*)0))
  return (0);
 (void) strlcpy(pool, nvpair_name(elem), sizeof (pool));
 pool[strcspn(pool, "/@")] = '\0';

 args = fnvlist_alloc();
 fnvlist_add_nvlist(args, "snaps", snaps);
 if (props != ((void*)0))
  fnvlist_add_nvlist(args, "props", props);

 error = lzc_ioctl(ZFS_IOC_SNAPSHOT, pool, args, errlist);
 nvlist_free(args);

 return (error);
}
