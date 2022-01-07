
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int ZFS_IOC_DESTROY_SNAPS ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char*,int *,int **) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,int ,int) ;

int
lzc_destroy_snaps(nvlist_t *snaps, boolean_t defer, nvlist_t **errlist)
{
 nvpair_t *elem;
 nvlist_t *args;
 int error;
 char pool[ZFS_MAX_DATASET_NAME_LEN];


 elem = nvlist_next_nvpair(snaps, ((void*)0));
 if (elem == ((void*)0))
  return (0);
 (void) strlcpy(pool, nvpair_name(elem), sizeof (pool));
 pool[strcspn(pool, "/@")] = '\0';

 args = fnvlist_alloc();
 fnvlist_add_nvlist(args, "snaps", snaps);
 if (defer)
  fnvlist_add_boolean(args, "defer");

 error = lzc_ioctl(ZFS_IOC_DESTROY_SNAPS, pool, args, errlist);
 nvlist_free(args);

 return (error);
}
