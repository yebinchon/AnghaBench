
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int tsd_t ;
struct TYPE_6__ {int active; int * thread_name; scalar_t__ thr_discrim; scalar_t__ thr_uid; } ;
typedef TYPE_1__ prof_tdata_t ;


 int prof_tdata_detach (int *,TYPE_1__*) ;
 TYPE_1__* prof_tdata_init_impl (int *,scalar_t__,scalar_t__,char*,int) ;
 char* prof_thread_name_alloc (int ,int *) ;
 int tsd_tsdn (int *) ;

prof_tdata_t *
prof_tdata_reinit(tsd_t *tsd, prof_tdata_t *tdata) {
 uint64_t thr_uid = tdata->thr_uid;
 uint64_t thr_discrim = tdata->thr_discrim + 1;
 char *thread_name = (tdata->thread_name != ((void*)0)) ?
     prof_thread_name_alloc(tsd_tsdn(tsd), tdata->thread_name) : ((void*)0);
 bool active = tdata->active;

 prof_tdata_detach(tsd, tdata);
 return prof_tdata_init_impl(tsd, thr_uid, thr_discrim, thread_name,
     active);
}
