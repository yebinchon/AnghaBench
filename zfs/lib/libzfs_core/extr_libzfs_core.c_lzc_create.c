
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int nvlist_t ;
typedef enum lzc_dataset_type { ____Placeholder_lzc_dataset_type } lzc_dataset_type ;
typedef int dmu_objset_type_t ;


 int ZFS_IOC_CREATE ;
 char* ZPOOL_HIDDEN_ARGS ;
 int fnvlist_add_int32 (int *,char*,int ) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_uint8_array (int *,char*,int *,int ) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_create(const char *fsname, enum lzc_dataset_type type, nvlist_t *props,
    uint8_t *wkeydata, uint_t wkeylen)
{
 int error;
 nvlist_t *hidden_args = ((void*)0);
 nvlist_t *args = fnvlist_alloc();

 fnvlist_add_int32(args, "type", (dmu_objset_type_t)type);
 if (props != ((void*)0))
  fnvlist_add_nvlist(args, "props", props);

 if (wkeydata != ((void*)0)) {
  hidden_args = fnvlist_alloc();
  fnvlist_add_uint8_array(hidden_args, "wkeydata", wkeydata,
      wkeylen);
  fnvlist_add_nvlist(args, ZPOOL_HIDDEN_ARGS, hidden_args);
 }

 error = lzc_ioctl(ZFS_IOC_CREATE, fsname, args, ((void*)0));
 nvlist_free(hidden_args);
 nvlist_free(args);
 return (error);
}
