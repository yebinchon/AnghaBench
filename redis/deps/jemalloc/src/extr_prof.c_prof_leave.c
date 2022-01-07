
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {int enq; int enq_idump; int enq_gdump; } ;
typedef TYPE_1__ prof_tdata_t ;


 int assert (int) ;
 int bt2gctx_mtx ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_unlock (int ,int *) ;
 int prof_gdump (int ) ;
 int prof_idump (int ) ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_leave(tsd_t *tsd, prof_tdata_t *tdata) {
 cassert(config_prof);
 assert(tdata == prof_tdata_get(tsd, 0));

 malloc_mutex_unlock(tsd_tsdn(tsd), &bt2gctx_mtx);

 if (tdata != ((void*)0)) {
  bool idump, gdump;

  assert(tdata->enq);
  tdata->enq = 0;
  idump = tdata->enq_idump;
  tdata->enq_idump = 0;
  gdump = tdata->enq_gdump;
  tdata->enq_gdump = 0;

  if (idump) {
   prof_idump(tsd_tsdn(tsd));
  }
  if (gdump) {
   prof_gdump(tsd_tsdn(tsd));
  }
 }
}
