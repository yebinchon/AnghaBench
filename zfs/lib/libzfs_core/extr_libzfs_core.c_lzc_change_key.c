
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int ZFS_IOC_CHANGE_KEY ;
 char* ZPOOL_HIDDEN_ARGS ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int fnvlist_add_uint8_array (int *,char*,int *,int ) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_change_key(const char *fsname, uint64_t crypt_cmd, nvlist_t *props,
    uint8_t *wkeydata, uint_t wkeylen)
{
 int error;
 nvlist_t *ioc_args = fnvlist_alloc();
 nvlist_t *hidden_args = ((void*)0);

 fnvlist_add_uint64(ioc_args, "crypt_cmd", crypt_cmd);

 if (wkeydata != ((void*)0)) {
  hidden_args = fnvlist_alloc();
  fnvlist_add_uint8_array(hidden_args, "wkeydata", wkeydata,
      wkeylen);
  fnvlist_add_nvlist(ioc_args, ZPOOL_HIDDEN_ARGS, hidden_args);
 }

 if (props != ((void*)0))
  fnvlist_add_nvlist(ioc_args, "props", props);

 error = lzc_ioctl(ZFS_IOC_CHANGE_KEY, fsname, ioc_args, ((void*)0));
 nvlist_free(hidden_args);
 nvlist_free(ioc_args);

 return (error);
}
