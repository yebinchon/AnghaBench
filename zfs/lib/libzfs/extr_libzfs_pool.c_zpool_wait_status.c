
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_wait_activity_t ;
struct TYPE_3__ {int zpool_name; int zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int boolean_t ;


 int ENOENT ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int lzc_wait (int ,int ,int*) ;
 int zpool_standard_error_fmt (int ,int,int ,int ) ;

int
zpool_wait_status(zpool_handle_t *zhp, zpool_wait_activity_t activity,
    boolean_t *missing, boolean_t *waited)
{
 int error = lzc_wait(zhp->zpool_name, activity, waited);
 *missing = (error == ENOENT);
 if (*missing)
  return (0);

 if (error != 0) {
  (void) zpool_standard_error_fmt(zhp->zpool_hdl, error,
      dgettext(TEXT_DOMAIN, "error waiting in pool '%s'"),
      zhp->zpool_name);
 }

 return (error);
}
