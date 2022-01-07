
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int tsd_t ;
struct TYPE_6__ {char* thread_name; int attached; int expired; int enq; int enq_idump; int enq_gdump; int dumping; int active; void* prng_state; int bt2tctx; scalar_t__ tctx_uid_next; void* thr_discrim; void* thr_uid; int lock; } ;
typedef TYPE_1__ prof_tdata_t ;


 int PROF_CKH_MINITEMS ;
 int TSDN_NULL ;
 int arena_get (int ,int ,int) ;
 int cassert (int ) ;
 scalar_t__ ckh_new (int *,int *,int ,int ,int ) ;
 int config_prof ;
 scalar_t__ iallocztm (int ,int,int ,int,int *,int,int ,int) ;
 int idalloctm (int ,TYPE_1__*,int *,int *,int,int) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int prof_bt_hash ;
 int prof_bt_keycomp ;
 int prof_sample_threshold_update (TYPE_1__*) ;
 int prof_tdata_mutex_choose (void*) ;
 int sz_size2index (int) ;
 int tdata_tree_insert (int *,TYPE_1__*) ;
 int tdatas ;
 int tdatas_mtx ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static prof_tdata_t *
prof_tdata_init_impl(tsd_t *tsd, uint64_t thr_uid, uint64_t thr_discrim,
    char *thread_name, bool active) {
 prof_tdata_t *tdata;

 cassert(config_prof);


 tdata = (prof_tdata_t *)iallocztm(tsd_tsdn(tsd), sizeof(prof_tdata_t),
     sz_size2index(sizeof(prof_tdata_t)), 0, ((void*)0), 1,
     arena_get(TSDN_NULL, 0, 1), 1);
 if (tdata == ((void*)0)) {
  return ((void*)0);
 }

 tdata->lock = prof_tdata_mutex_choose(thr_uid);
 tdata->thr_uid = thr_uid;
 tdata->thr_discrim = thr_discrim;
 tdata->thread_name = thread_name;
 tdata->attached = 1;
 tdata->expired = 0;
 tdata->tctx_uid_next = 0;

 if (ckh_new(tsd, &tdata->bt2tctx, PROF_CKH_MINITEMS, prof_bt_hash,
     prof_bt_keycomp)) {
  idalloctm(tsd_tsdn(tsd), tdata, ((void*)0), ((void*)0), 1, 1);
  return ((void*)0);
 }

 tdata->prng_state = (uint64_t)(uintptr_t)tdata;
 prof_sample_threshold_update(tdata);

 tdata->enq = 0;
 tdata->enq_idump = 0;
 tdata->enq_gdump = 0;

 tdata->dumping = 0;
 tdata->active = active;

 malloc_mutex_lock(tsd_tsdn(tsd), &tdatas_mtx);
 tdata_tree_insert(&tdatas, tdata);
 malloc_mutex_unlock(tsd_tsdn(tsd), &tdatas_mtx);

 return tdata;
}
