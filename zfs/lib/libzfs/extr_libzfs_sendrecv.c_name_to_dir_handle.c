
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int libzfs_handle_t ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_DATASET ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int * zfs_open (int *,char*,int ) ;

zfs_handle_t *
name_to_dir_handle(libzfs_handle_t *hdl, const char *snapname)
{
 char dirname[ZFS_MAX_DATASET_NAME_LEN];
 (void) strlcpy(dirname, snapname, ZFS_MAX_DATASET_NAME_LEN);
 char *c = strchr(dirname, '@');
 if (c != ((void*)0))
  *c = '\0';
 return (zfs_open(hdl, dirname, ZFS_TYPE_DATASET));
}
