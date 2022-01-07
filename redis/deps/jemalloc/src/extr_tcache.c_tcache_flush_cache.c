
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_14__ {scalar_t__ prof_accumbytes; int * arena; } ;
typedef TYPE_2__ tcache_t ;
struct TYPE_13__ {scalar_t__ nrequests; } ;
struct TYPE_15__ {TYPE_1__ tstats; } ;
typedef TYPE_3__ cache_bin_t ;


 unsigned int NBINS ;
 scalar_t__ arena_prof_accum (int ,int *,scalar_t__) ;
 int assert (int) ;
 scalar_t__ config_prof ;
 scalar_t__ config_stats ;
 unsigned int nhbins ;
 int prof_idump (int ) ;
 int tcache_bin_flush_large (int *,TYPE_3__*,unsigned int,int ,TYPE_2__*) ;
 int tcache_bin_flush_small (int *,TYPE_2__*,TYPE_3__*,unsigned int,int ) ;
 TYPE_3__* tcache_large_bin_get (TYPE_2__*,unsigned int) ;
 TYPE_3__* tcache_small_bin_get (TYPE_2__*,unsigned int) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
tcache_flush_cache(tsd_t *tsd, tcache_t *tcache) {
 assert(tcache->arena != ((void*)0));

 for (unsigned i = 0; i < NBINS; i++) {
  cache_bin_t *tbin = tcache_small_bin_get(tcache, i);
  tcache_bin_flush_small(tsd, tcache, tbin, i, 0);

  if (config_stats) {
   assert(tbin->tstats.nrequests == 0);
  }
 }
 for (unsigned i = NBINS; i < nhbins; i++) {
  cache_bin_t *tbin = tcache_large_bin_get(tcache, i);
  tcache_bin_flush_large(tsd, tbin, i, 0, tcache);

  if (config_stats) {
   assert(tbin->tstats.nrequests == 0);
  }
 }

 if (config_prof && tcache->prof_accumbytes > 0 &&
     arena_prof_accum(tsd_tsdn(tsd), tcache->arena,
     tcache->prof_accumbytes)) {
  prof_idump(tsd_tsdn(tsd));
 }
}
