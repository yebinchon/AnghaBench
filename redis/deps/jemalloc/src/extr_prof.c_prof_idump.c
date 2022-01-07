
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
struct TYPE_3__ {int enq_idump; scalar_t__ enq; } ;
typedef TYPE_1__ prof_tdata_t ;


 int PATH_MAX ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 char* opt_prof_prefix ;
 int prof_active_get_unlocked () ;
 int prof_booted ;
 int prof_dump (int *,int,char*,int) ;
 int prof_dump_filename (char*,char,int ) ;
 int prof_dump_iseq ;
 int prof_dump_seq_mtx ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

void
prof_idump(tsdn_t *tsdn) {
 tsd_t *tsd;
 prof_tdata_t *tdata;

 cassert(config_prof);

 if (!prof_booted || tsdn_null(tsdn) || !prof_active_get_unlocked()) {
  return;
 }
 tsd = tsdn_tsd(tsdn);
 if (tsd_reentrancy_level_get(tsd) > 0) {
  return;
 }

 tdata = prof_tdata_get(tsd, 0);
 if (tdata == ((void*)0)) {
  return;
 }
 if (tdata->enq) {
  tdata->enq_idump = 1;
  return;
 }

 if (opt_prof_prefix[0] != '\0') {
  char filename[PATH_MAX + 1];
  malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
  prof_dump_filename(filename, 'i', prof_dump_iseq);
  prof_dump_iseq++;
  malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
  prof_dump(tsd, 0, filename, 0);
 }
}
