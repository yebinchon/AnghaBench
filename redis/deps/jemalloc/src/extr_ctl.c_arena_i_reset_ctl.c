
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int arena_t ;


 int arena_i_reset_destroy_helper (int *,size_t const*,size_t,void*,size_t*,void*,size_t,unsigned int*,int **) ;
 int arena_reset (int *,int *) ;
 int arena_reset_finish_background_thread (int *,unsigned int) ;
 int arena_reset_prepare_background_thread (int *,unsigned int) ;

__attribute__((used)) static int
arena_i_reset_ctl(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
 int ret;
 unsigned arena_ind;
 arena_t *arena;

 ret = arena_i_reset_destroy_helper(tsd, mib, miblen, oldp, oldlenp,
     newp, newlen, &arena_ind, &arena);
 if (ret != 0) {
  return ret;
 }

 arena_reset_prepare_background_thread(tsd, arena_ind);
 arena_reset(tsd, arena);
 arena_reset_finish_background_thread(tsd, arena_ind);

 return ret;
}
