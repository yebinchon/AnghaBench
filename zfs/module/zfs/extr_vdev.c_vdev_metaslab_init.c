
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ vdev_ms_count; scalar_t__ vdev_asize; scalar_t__ vdev_ms_shift; int * vdev_mg; int vdev_removing; int ** vdev_ms; int vdev_ms_array; int vdev_ishole; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int objset_t ;
typedef int metaslab_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int DMU_READ_PREFETCH ;
 int FTAG ;
 int KM_SLEEP ;
 int RW_WRITER ;
 int SCL_ALLOC ;
 int bcopy (int **,int **,scalar_t__) ;
 int dmu_read (int *,int ,scalar_t__,int,scalar_t__*,int ) ;
 int metaslab_group_activate (int *) ;
 int metaslab_init (int *,scalar_t__,scalar_t__,scalar_t__,int **) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 scalar_t__ spa_config_held (TYPE_2__*,int ,int ) ;
 int spa_log_sm_set_blocklimit (TYPE_2__*) ;
 int vdev_dbgmsg (TYPE_1__*,char*,int) ;
 int vdev_is_concrete (TYPE_1__*) ;
 int vdev_metaslab_group_create (TYPE_1__*) ;
 int vmem_free (int **,scalar_t__) ;
 int ** vmem_zalloc (scalar_t__,int ) ;

int
vdev_metaslab_init(vdev_t *vd, uint64_t txg)
{
 spa_t *spa = vd->vdev_spa;
 objset_t *mos = spa->spa_meta_objset;
 uint64_t m;
 uint64_t oldc = vd->vdev_ms_count;
 uint64_t newc = vd->vdev_asize >> vd->vdev_ms_shift;
 metaslab_t **mspp;
 int error;
 boolean_t expanding = (oldc != 0);

 ASSERT(txg == 0 || spa_config_held(spa, SCL_ALLOC, RW_WRITER));




 if (vd->vdev_ms_shift == 0)
  return (0);

 ASSERT(!vd->vdev_ishole);

 ASSERT(oldc <= newc);

 mspp = vmem_zalloc(newc * sizeof (*mspp), KM_SLEEP);

 if (expanding) {
  bcopy(vd->vdev_ms, mspp, oldc * sizeof (*mspp));
  vmem_free(vd->vdev_ms, oldc * sizeof (*mspp));
 }

 vd->vdev_ms = mspp;
 vd->vdev_ms_count = newc;
 for (m = oldc; m < newc; m++) {
  uint64_t object = 0;






  if (txg == 0 && vd->vdev_ms_array != 0) {
   error = dmu_read(mos, vd->vdev_ms_array,
       m * sizeof (uint64_t), sizeof (uint64_t), &object,
       DMU_READ_PREFETCH);
   if (error != 0) {
    vdev_dbgmsg(vd, "unable to read the metaslab "
        "array [error=%d]", error);
    return (error);
   }
  }







  if (vd->vdev_mg == ((void*)0)) {
   ASSERT0(vdev_is_concrete(vd));
   vdev_metaslab_group_create(vd);
  }

  error = metaslab_init(vd->vdev_mg, m, object, txg,
      &(vd->vdev_ms[m]));
  if (error != 0) {
   vdev_dbgmsg(vd, "metaslab_init failed [error=%d]",
       error);
   return (error);
  }
 }

 if (txg == 0)
  spa_config_enter(spa, SCL_ALLOC, FTAG, RW_WRITER);






 if (!expanding && !vd->vdev_removing) {
  metaslab_group_activate(vd->vdev_mg);
 }

 if (txg == 0)
  spa_config_exit(spa, SCL_ALLOC, FTAG);






 spa_log_sm_set_blocklimit(spa);

 return (0);
}
