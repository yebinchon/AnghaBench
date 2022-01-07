
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef scalar_t__ uint_t ;
struct TYPE_4__ {int cb_name_flags; } ;
typedef TYPE_1__ status_cbdata_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int free (char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int print_status_config (int *,TYPE_1__*,char*,int *,int,int ) ;
 int printf (char*) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static void
print_l2cache(zpool_handle_t *zhp, status_cbdata_t *cb, nvlist_t **l2cache,
    uint_t nl2cache)
{
 uint_t i;
 char *name;

 if (nl2cache == 0)
  return;

 (void) printf(gettext("\tcache\n"));

 for (i = 0; i < nl2cache; i++) {
  name = zpool_vdev_name(g_zfs, zhp, l2cache[i],
      cb->cb_name_flags);
  print_status_config(zhp, cb, name, l2cache[i], 2, B_FALSE);
  free(name);
 }
}
