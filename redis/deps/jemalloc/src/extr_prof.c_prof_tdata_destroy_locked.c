
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_6__ {int bt2tctx; struct TYPE_6__* thread_name; } ;
typedef TYPE_1__ prof_tdata_t ;


 int assert (int ) ;
 int ckh_delete (int *,int *) ;
 int idalloctm (int ,TYPE_1__*,int *,int *,int,int) ;
 int malloc_mutex_assert_owner (int ,int *) ;
 int prof_tdata_should_destroy_unlocked (TYPE_1__*,int) ;
 int tdata_tree_remove (int *,TYPE_1__*) ;
 int tdatas ;
 int tdatas_mtx ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_tdata_destroy_locked(tsd_t *tsd, prof_tdata_t *tdata,
    bool even_if_attached) {
 malloc_mutex_assert_owner(tsd_tsdn(tsd), &tdatas_mtx);

 tdata_tree_remove(&tdatas, tdata);

 assert(prof_tdata_should_destroy_unlocked(tdata, even_if_attached));

 if (tdata->thread_name != ((void*)0)) {
  idalloctm(tsd_tsdn(tsd), tdata->thread_name, ((void*)0), ((void*)0), 1,
      1);
 }
 ckh_delete(tsd, &tdata->bt2tctx);
 idalloctm(tsd_tsdn(tsd), tdata, ((void*)0), ((void*)0), 1, 1);
}
