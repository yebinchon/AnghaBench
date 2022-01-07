
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {unsigned long long vdev_ms_shift; TYPE_5__* vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
typedef int u_longlong_t ;
struct TYPE_19__ {int sm_shift; TYPE_2__* sm_phys; } ;
typedef TYPE_4__ space_map_t ;
struct TYPE_20__ {int spa_meta_objset; } ;
typedef TYPE_5__ spa_t ;
struct TYPE_21__ {unsigned long long ms_size; TYPE_4__* ms_sm; scalar_t__ ms_fragmentation; int ms_lock; int ms_allocatable; scalar_t__ ms_start; scalar_t__ ms_id; TYPE_1__* ms_group; } ;
typedef TYPE_6__ metaslab_t ;
typedef int freebuf ;
struct TYPE_17__ {int smp_histogram; } ;
struct TYPE_16__ {TYPE_3__* mg_vd; } ;


 int ASSERT (int) ;
 int SPACE_MAP_HISTOGRAM_SIZE ;
 int SPA_FEATURE_LOG_SPACEMAP ;
 int SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int VERIFY0 (int ) ;
 int dump_histogram (int ,int ,int ) ;
 int dump_metaslab_stats (TYPE_6__*) ;
 int* dump_opt ;
 int dump_spacemap (int ,TYPE_4__*) ;
 int metaslab_load (TYPE_6__*) ;
 scalar_t__ metaslab_unflushed_txg (TYPE_6__*) ;
 int metaslab_unload (TYPE_6__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,int ,...) ;
 int range_tree_stat_verify (int ) ;
 scalar_t__ spa_feature_is_active (TYPE_5__*,int ) ;
 scalar_t__ space_map_allocated (TYPE_4__*) ;
 scalar_t__ space_map_object (TYPE_4__*) ;
 int zdb_nicenum (scalar_t__,char*,int) ;

__attribute__((used)) static void
dump_metaslab(metaslab_t *msp)
{
 vdev_t *vd = msp->ms_group->mg_vd;
 spa_t *spa = vd->vdev_spa;
 space_map_t *sm = msp->ms_sm;
 char freebuf[32];

 zdb_nicenum(msp->ms_size - space_map_allocated(sm), freebuf,
     sizeof (freebuf));

 (void) printf(
     "\tmetaslab %6llu   offset %12llx   spacemap %6llu   free    %5s\n",
     (u_longlong_t)msp->ms_id, (u_longlong_t)msp->ms_start,
     (u_longlong_t)space_map_object(sm), freebuf);

 if (dump_opt['m'] > 2 && !dump_opt['L']) {
  mutex_enter(&msp->ms_lock);
  VERIFY0(metaslab_load(msp));
  range_tree_stat_verify(msp->ms_allocatable);
  dump_metaslab_stats(msp);
  metaslab_unload(msp);
  mutex_exit(&msp->ms_lock);
 }

 if (dump_opt['m'] > 1 && sm != ((void*)0) &&
     spa_feature_is_active(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM)) {




  (void) printf("\tOn-disk histogram:\t\tfragmentation %llu\n",
      (u_longlong_t)msp->ms_fragmentation);
  dump_histogram(sm->sm_phys->smp_histogram,
      SPACE_MAP_HISTOGRAM_SIZE, sm->sm_shift);
 }

 ASSERT(msp->ms_size == (1ULL << vd->vdev_ms_shift));
 dump_spacemap(spa->spa_meta_objset, msp->ms_sm);

 if (spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP)) {
  (void) printf("\tFlush data:\n\tunflushed txg=%llu\n\n",
      (u_longlong_t)metaslab_unflushed_txg(msp));
 }
}
