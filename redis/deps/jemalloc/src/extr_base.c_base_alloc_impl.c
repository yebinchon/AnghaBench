
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_5__ {int mtx; int * avail; } ;
typedef TYPE_1__ base_t ;


 size_t ALIGNMENT_CEILING (size_t,size_t) ;
 size_t NSIZES ;
 size_t QUANTUM ;
 size_t QUANTUM_CEILING (size_t) ;
 int * base_extent_alloc (int *,TYPE_1__*,size_t,size_t) ;
 void* base_extent_bump_alloc (TYPE_1__*,int *,size_t,size_t) ;
 int * extent_heap_remove_first (int *) ;
 size_t extent_sn_get (int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 size_t sz_size2index (size_t) ;

__attribute__((used)) static void *
base_alloc_impl(tsdn_t *tsdn, base_t *base, size_t size, size_t alignment,
    size_t *esn) {
 alignment = QUANTUM_CEILING(alignment);
 size_t usize = ALIGNMENT_CEILING(size, alignment);
 size_t asize = usize + alignment - QUANTUM;

 extent_t *extent = ((void*)0);
 malloc_mutex_lock(tsdn, &base->mtx);
 for (szind_t i = sz_size2index(asize); i < NSIZES; i++) {
  extent = extent_heap_remove_first(&base->avail[i]);
  if (extent != ((void*)0)) {

   break;
  }
 }
 if (extent == ((void*)0)) {

  extent = base_extent_alloc(tsdn, base, usize, alignment);
 }
 void *ret;
 if (extent == ((void*)0)) {
  ret = ((void*)0);
  goto label_return;
 }

 ret = base_extent_bump_alloc(base, extent, usize, alignment);
 if (esn != ((void*)0)) {
  *esn = extent_sn_get(extent);
 }
label_return:
 malloc_mutex_unlock(tsdn, &base->mtx);
 return ret;
}
