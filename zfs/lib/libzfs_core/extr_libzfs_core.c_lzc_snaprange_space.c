
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int fs ;


 int EINVAL ;
 int ZFS_IOC_SPACE_SNAPS ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fnvlist_lookup_uint64 (int *,char*) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;
 int nvlist_free (int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;

int
lzc_snaprange_space(const char *firstsnap, const char *lastsnap,
    uint64_t *usedp)
{
 nvlist_t *args;
 nvlist_t *result;
 int err;
 char fs[ZFS_MAX_DATASET_NAME_LEN];
 char *atp;


 (void) strlcpy(fs, firstsnap, sizeof (fs));
 atp = strchr(fs, '@');
 if (atp == ((void*)0))
  return (EINVAL);
 *atp = '\0';

 args = fnvlist_alloc();
 fnvlist_add_string(args, "firstsnap", firstsnap);

 err = lzc_ioctl(ZFS_IOC_SPACE_SNAPS, lastsnap, args, &result);
 nvlist_free(args);
 if (err == 0)
  *usedp = fnvlist_lookup_uint64(result, "used");
 fnvlist_free(result);

 return (err);
}
