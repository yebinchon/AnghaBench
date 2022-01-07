
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_process_func_t ;
struct TYPE_3__ {char const* dd_compare; char const* dd_new_devid; int dd_found; int dd_islabeled; int dd_prop; int dd_func; int member_0; } ;
typedef TYPE_1__ dev_data_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZPOOL_CONFIG_DEVID ;
 int g_zfshdl ;
 int zfs_iter_pool ;
 int zpool_iter (int ,int ,TYPE_1__*) ;

__attribute__((used)) static boolean_t
devid_iter(const char *devid, zfs_process_func_t func, boolean_t is_slice)
{
 dev_data_t data = { 0 };

 data.dd_compare = devid;
 data.dd_func = func;
 data.dd_prop = ZPOOL_CONFIG_DEVID;
 data.dd_found = B_FALSE;
 data.dd_islabeled = is_slice;
 data.dd_new_devid = devid;

 (void) zpool_iter(g_zfshdl, zfs_iter_pool, &data);

 return (data.dd_found);
}
