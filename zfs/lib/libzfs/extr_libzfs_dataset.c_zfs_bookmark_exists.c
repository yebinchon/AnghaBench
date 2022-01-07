
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fsname ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int * fnvlist_alloc () ;
 int lzc_get_bookmarks (char*,int *,int **) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_free (int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;

boolean_t
zfs_bookmark_exists(const char *path)
{
 nvlist_t *bmarks;
 nvlist_t *props;
 char fsname[ZFS_MAX_DATASET_NAME_LEN];
 char *bmark_name;
 char *pound;
 int err;
 boolean_t rv;

 (void) strlcpy(fsname, path, sizeof (fsname));
 pound = strchr(fsname, '#');
 if (pound == ((void*)0))
  return (B_FALSE);

 *pound = '\0';
 bmark_name = pound + 1;
 props = fnvlist_alloc();
 err = lzc_get_bookmarks(fsname, props, &bmarks);
 nvlist_free(props);
 if (err != 0) {
  nvlist_free(bmarks);
  return (B_FALSE);
 }

 rv = nvlist_exists(bmarks, bmark_name);
 nvlist_free(bmarks);
 return (rv);
}
