
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rm_firstdatacol; } ;
typedef TYPE_1__ raidz_map_t ;


 int CE_PANIC ;
 scalar_t__ RAIDZ_ORIGINAL_IMPL ;
 int cmn_err (int ,char*) ;
 int vdev_raidz_generate_parity_p (TYPE_1__*) ;
 int vdev_raidz_generate_parity_pq (TYPE_1__*) ;
 int vdev_raidz_generate_parity_pqr (TYPE_1__*) ;
 scalar_t__ vdev_raidz_math_generate (TYPE_1__*) ;

void
vdev_raidz_generate_parity(raidz_map_t *rm)
{

 if (vdev_raidz_math_generate(rm) != RAIDZ_ORIGINAL_IMPL)
  return;

 switch (rm->rm_firstdatacol) {
 case 1:
  vdev_raidz_generate_parity_p(rm);
  break;
 case 2:
  vdev_raidz_generate_parity_pq(rm);
  break;
 case 3:
  vdev_raidz_generate_parity_pqr(rm);
  break;
 default:
  cmn_err(CE_PANIC, "invalid RAID-Z configuration");
 }
}
