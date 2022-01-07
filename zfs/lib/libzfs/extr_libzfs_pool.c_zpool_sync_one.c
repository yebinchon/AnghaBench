
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int lzc_sync (char const*,int *,int *) ;
 int nvlist_free (int *) ;
 int * zpool_get_handle (int *) ;
 char* zpool_get_name (int *) ;
 int zpool_standard_error_fmt (int *,int,int ,char const*) ;

int
zpool_sync_one(zpool_handle_t *zhp, void *data)
{
 int ret;
 libzfs_handle_t *hdl = zpool_get_handle(zhp);
 const char *pool_name = zpool_get_name(zhp);
 boolean_t *force = data;
 nvlist_t *innvl = fnvlist_alloc();

 fnvlist_add_boolean_value(innvl, "force", *force);
 if ((ret = lzc_sync(pool_name, innvl, ((void*)0))) != 0) {
  nvlist_free(innvl);
  return (zpool_standard_error_fmt(hdl, ret,
      dgettext(TEXT_DOMAIN, "sync '%s' failed"), pool_name));
 }
 nvlist_free(innvl);

 return (0);
}
