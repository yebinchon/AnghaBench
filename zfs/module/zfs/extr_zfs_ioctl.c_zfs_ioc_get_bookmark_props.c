
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fsname ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_get_bookmark_props (char*,char*,int *) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int
zfs_ioc_get_bookmark_props(const char *bookmark, nvlist_t *innvl,
    nvlist_t *outnvl)
{
 char fsname[ZFS_MAX_DATASET_NAME_LEN];
 char *bmname;

 bmname = strchr(bookmark, '#');
 if (bmname == ((void*)0))
  return (SET_ERROR(EINVAL));
 bmname++;

 (void) strlcpy(fsname, bookmark, sizeof (fsname));
 *(strchr(fsname, '#')) = '\0';

 return (dsl_get_bookmark_props(fsname, bmname, outnvl));
}
