
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int ZFS_IOC_LOAD_KEY ;
 int ZPOOL_HIDDEN_ARGS ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_uint8_array (int *,char*,int *,int ) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_load_key(const char *fsname, boolean_t noop, uint8_t *wkeydata,
    uint_t wkeylen)
{
 int error;
 nvlist_t *ioc_args;
 nvlist_t *hidden_args;

 if (wkeydata == ((void*)0))
  return (EINVAL);

 ioc_args = fnvlist_alloc();
 hidden_args = fnvlist_alloc();
 fnvlist_add_uint8_array(hidden_args, "wkeydata", wkeydata, wkeylen);
 fnvlist_add_nvlist(ioc_args, ZPOOL_HIDDEN_ARGS, hidden_args);
 if (noop)
  fnvlist_add_boolean(ioc_args, "noop");
 error = lzc_ioctl(ZFS_IOC_LOAD_KEY, fsname, ioc_args, ((void*)0));
 nvlist_free(hidden_args);
 nvlist_free(ioc_args);

 return (error);
}
