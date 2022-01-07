
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int vdev_t ;
typedef int u_longlong_t ;
struct spa_ld_log_sm_arg {int slls_txg; TYPE_3__* slls_spa; } ;
typedef int space_map_t ;
struct TYPE_21__ {int sus_nblocks; int sus_memused; } ;
struct TYPE_22__ {TYPE_2__ spa_unflushed_stats; int spa_metaslabs_by_flushed; int spa_sm_logs_by_txg; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_23__ {int sls_nblocks; int ms_weight; int ms_lock; int * ms_sm; int ms_unflushed_frees; TYPE_1__* ms_group; int ms_unflushed_allocs; scalar_t__ ms_allocated_space; int sls_mscount; int sls_txg; scalar_t__ sls_sm_obj; } ;
typedef TYPE_4__ spa_log_sm_t ;
typedef TYPE_4__ metaslab_t ;
typedef int longlong_t ;
typedef int hrtime_t ;
struct TYPE_20__ {int mg_class; int * mg_vd; } ;


 int ASSERT0 (int) ;
 TYPE_4__* AVL_NEXT (int *,TYPE_4__*) ;
 int METASLAB_ACTIVE_MASK ;
 int SPA_MINBLOCKSHIFT ;
 int UINT64_MAX ;
 int VERIFY0 (int ) ;
 TYPE_4__* avl_first (int *) ;
 scalar_t__ avl_numnodes (int *) ;
 int gethrtime () ;
 scalar_t__ metaslab_debug_load ;
 int metaslab_load (TYPE_4__*) ;
 int metaslab_recalculate_weight_and_sort (TYPE_4__*) ;
 int metaslab_set_selected_txg (TYPE_4__*,int ) ;
 int metaslab_space_update (int *,int ,int ,int ,int ) ;
 scalar_t__ metaslab_unflushed_changes_memused (TYPE_4__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_space (int ) ;
 int spa_ld_log_sm_cb ;
 int spa_load_failed (TYPE_3__*,char*,int ,int) ;
 int spa_load_note (TYPE_3__*,char*,int ,int ,int ,int ) ;
 scalar_t__ spa_log_sm_nblocks (TYPE_3__*) ;
 int spa_meta_objset (TYPE_3__*) ;
 int spa_writeable (TYPE_3__*) ;
 scalar_t__ space_map_allocated (int *) ;
 int space_map_close (int *) ;
 int space_map_iterate (int *,int ,int ,struct spa_ld_log_sm_arg*) ;
 int space_map_length (int *) ;
 int space_map_nblocks (int *) ;
 int space_map_open (int **,int ,scalar_t__,int ,int ,int ) ;
 int summary_add_data (TYPE_3__*,int ,int ,int) ;
 scalar_t__ zfs_log_sm_blksz ;

__attribute__((used)) static int
spa_ld_log_sm_data(spa_t *spa)
{
 int error = 0;





 if (!spa_writeable(spa))
  return (0);

 ASSERT0(spa->spa_unflushed_stats.sus_nblocks);
 ASSERT0(spa->spa_unflushed_stats.sus_memused);

 hrtime_t read_logs_starttime = gethrtime();

 for (spa_log_sm_t *sls = avl_first(&spa->spa_sm_logs_by_txg);
     sls; sls = AVL_NEXT(&spa->spa_sm_logs_by_txg, sls)) {
  space_map_t *sm = ((void*)0);
  error = space_map_open(&sm, spa_meta_objset(spa),
      sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT);
  if (error != 0) {
   spa_load_failed(spa, "spa_ld_log_sm_data(): failed at "
       "space_map_open(obj=%llu) [error %d]",
       (u_longlong_t)sls->sls_sm_obj, error);
   goto out;
  }

  struct spa_ld_log_sm_arg vla = {
   .slls_spa = spa,
   .slls_txg = sls->sls_txg
  };
  error = space_map_iterate(sm, space_map_length(sm),
      spa_ld_log_sm_cb, &vla);
  if (error != 0) {
   space_map_close(sm);
   spa_load_failed(spa, "spa_ld_log_sm_data(): failed "
       "at space_map_iterate(obj=%llu) [error %d]",
       (u_longlong_t)sls->sls_sm_obj, error);
   goto out;
  }

  ASSERT0(sls->sls_nblocks);
  sls->sls_nblocks = space_map_nblocks(sm);
  spa->spa_unflushed_stats.sus_nblocks += sls->sls_nblocks;
  summary_add_data(spa, sls->sls_txg,
      sls->sls_mscount, sls->sls_nblocks);

  space_map_close(sm);
 }
 hrtime_t read_logs_endtime = gethrtime();
 spa_load_note(spa,
     "read %llu log space maps (%llu total blocks - blksz = %llu bytes) "
     "in %lld ms", (u_longlong_t)avl_numnodes(&spa->spa_sm_logs_by_txg),
     (u_longlong_t)spa_log_sm_nblocks(spa),
     (u_longlong_t)zfs_log_sm_blksz,
     (longlong_t)((read_logs_endtime - read_logs_starttime) / 1000000));

out:
 for (metaslab_t *m = avl_first(&spa->spa_metaslabs_by_flushed);
     m != ((void*)0); m = AVL_NEXT(&spa->spa_metaslabs_by_flushed, m)) {
  mutex_enter(&m->ms_lock);
  m->ms_allocated_space = space_map_allocated(m->ms_sm) +
      range_tree_space(m->ms_unflushed_allocs) -
      range_tree_space(m->ms_unflushed_frees);

  vdev_t *vd = m->ms_group->mg_vd;
  metaslab_space_update(vd, m->ms_group->mg_class,
      range_tree_space(m->ms_unflushed_allocs), 0, 0);
  metaslab_space_update(vd, m->ms_group->mg_class,
      -range_tree_space(m->ms_unflushed_frees), 0, 0);

  ASSERT0(m->ms_weight & METASLAB_ACTIVE_MASK);
  metaslab_recalculate_weight_and_sort(m);

  spa->spa_unflushed_stats.sus_memused +=
      metaslab_unflushed_changes_memused(m);

  if (metaslab_debug_load && m->ms_sm != ((void*)0)) {
   VERIFY0(metaslab_load(m));
   metaslab_set_selected_txg(m, 0);
  }
  mutex_exit(&m->ms_lock);
 }

 return (error);
}
