
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_ROLLBACK ;
 int * fnvlist_alloc () ;
 char* fnvlist_lookup_string (int *,char*) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;
 int nvlist_free (int *) ;
 int strlcpy (char*,char const*,int) ;

int
lzc_rollback(const char *fsname, char *snapnamebuf, int snapnamelen)
{
 nvlist_t *args;
 nvlist_t *result;
 int err;

 args = fnvlist_alloc();
 err = lzc_ioctl(ZFS_IOC_ROLLBACK, fsname, args, &result);
 nvlist_free(args);
 if (err == 0 && snapnamebuf != ((void*)0)) {
  const char *snapname = fnvlist_lookup_string(result, "target");
  (void) strlcpy(snapnamebuf, snapname, snapnamelen);
 }
 nvlist_free(result);

 return (err);
}
