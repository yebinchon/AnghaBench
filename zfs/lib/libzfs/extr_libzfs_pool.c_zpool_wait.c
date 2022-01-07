
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_wait_activity_t ;
struct TYPE_4__ {int zpool_name; int zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef scalar_t__ boolean_t ;


 int ENOENT ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int zpool_standard_error_fmt (int ,int,int ,int ) ;
 int zpool_wait_status (TYPE_1__*,int ,scalar_t__*,int *) ;

int
zpool_wait(zpool_handle_t *zhp, zpool_wait_activity_t activity)
{
 boolean_t missing;

 int error = zpool_wait_status(zhp, activity, &missing, ((void*)0));

 if (missing) {
  (void) zpool_standard_error_fmt(zhp->zpool_hdl, ENOENT,
      dgettext(TEXT_DOMAIN, "error waiting in pool '%s'"),
      zhp->zpool_name);
  return (ENOENT);
 } else {
  return (error);
 }
}
