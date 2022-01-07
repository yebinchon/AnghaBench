
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zpool_state; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int libzfs_handle_t ;


 int EZFS_POOLUNAVAIL ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int zfs_error_fmt (int *,int ,int ,int ) ;
 int zpool_close (TYPE_1__*) ;
 TYPE_1__* zpool_open_canfail (int *,char const*) ;

zpool_handle_t *
zpool_open(libzfs_handle_t *hdl, const char *pool)
{
 zpool_handle_t *zhp;

 if ((zhp = zpool_open_canfail(hdl, pool)) == ((void*)0))
  return (((void*)0));

 if (zhp->zpool_state == POOL_STATE_UNAVAIL) {
  (void) zfs_error_fmt(hdl, EZFS_POOLUNAVAIL,
      dgettext(TEXT_DOMAIN, "cannot open '%s'"), zhp->zpool_name);
  zpool_close(zhp);
  return (((void*)0));
 }

 return (zhp);
}
