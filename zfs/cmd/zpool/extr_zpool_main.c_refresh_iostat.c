
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int cb_list; } ;
typedef TYPE_1__ iostat_cbdata_t ;
typedef scalar_t__ boolean_t ;


 int pool_list_remove (int ,int *) ;
 scalar_t__ zpool_refresh_stats (int *,scalar_t__*) ;

__attribute__((used)) static int
refresh_iostat(zpool_handle_t *zhp, void *data)
{
 iostat_cbdata_t *cb = data;
 boolean_t missing;




 if (zpool_refresh_stats(zhp, &missing) != 0)
  return (-1);

 if (missing)
  pool_list_remove(cb->cb_list, zhp);

 return (0);
}
