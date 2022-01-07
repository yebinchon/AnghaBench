
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;

int
dmu_fsname(const char *snapname, char *buf)
{
 char *atp = strchr(snapname, '@');
 if (atp == ((void*)0))
  return (SET_ERROR(EINVAL));
 if (atp - snapname >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));
 (void) strlcpy(buf, snapname, atp - snapname + 1);
 return (0);
}
