
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int lzc_reopen (char const*,int ) ;
 int * zpool_get_handle (int *) ;
 char* zpool_get_name (int *) ;
 int zpool_standard_error_fmt (int *,int,int ,char const*) ;

int
zpool_reopen_one(zpool_handle_t *zhp, void *data)
{
 libzfs_handle_t *hdl = zpool_get_handle(zhp);
 const char *pool_name = zpool_get_name(zhp);
 boolean_t *scrub_restart = data;
 int error;

 error = lzc_reopen(pool_name, *scrub_restart);
 if (error) {
  return (zpool_standard_error_fmt(hdl, error,
      dgettext(TEXT_DOMAIN, "cannot reopen '%s'"), pool_name));
 }

 return (0);
}
