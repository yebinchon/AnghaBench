
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ks_ndata; int * ks_data; } ;


 int B_TRUE ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_RAW ;
 int UINT32_MAX ;
 int atomic_swap_32 (int *,int ) ;
 int benchmark_raidz () ;
 TYPE_1__* kstat_create (char*,int ,char*,char*,int ,int ,int ) ;
 int kstat_install (TYPE_1__*) ;
 int kstat_set_raw_ops (TYPE_1__*,int ,int ,int ) ;
 int raidz_math_initialized ;
 TYPE_1__* raidz_math_kstat ;
 int raidz_math_kstat_addr ;
 int raidz_math_kstat_data ;
 int raidz_math_kstat_headers ;
 int user_sel_impl ;
 int zfs_vdev_raidz_impl ;

void
vdev_raidz_math_init(void)
{

 benchmark_raidz();
 atomic_swap_32(&zfs_vdev_raidz_impl, user_sel_impl);
 raidz_math_initialized = B_TRUE;
}
