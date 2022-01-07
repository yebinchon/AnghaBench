
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int force; scalar_t__ hardforce; } ;
typedef TYPE_1__ export_cbdata_t ;


 int B_FALSE ;
 int history_str ;
 int log_history ;
 scalar_t__ zpool_disable_datasets (int *,int ) ;
 scalar_t__ zpool_export (int *,int ,int ) ;
 scalar_t__ zpool_export_force (int *,int ) ;

int
zpool_export_one(zpool_handle_t *zhp, void *data)
{
 export_cbdata_t *cb = data;

 if (zpool_disable_datasets(zhp, cb->force) != 0)
  return (1);


 log_history = B_FALSE;

 if (cb->hardforce) {
  if (zpool_export_force(zhp, history_str) != 0)
   return (1);
 } else if (zpool_export(zhp, cb->force, history_str) != 0) {
  return (1);
 }

 return (0);
}
