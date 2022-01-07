
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * storage; scalar_t__ alloc; } ;
typedef int TIM_SORT_RUN_T ;
typedef TYPE_1__ TEMP_STORAGE_T ;
typedef int SORT_TYPE ;


 int BINARY_INSERTION_SORT (int *,size_t const) ;
 int CHECK_INVARIANT (int *,size_t) ;
 int PUSH_NEXT (int *,size_t const,TYPE_1__*,size_t,int *,size_t*,size_t*) ;
 size_t TIM_SORT_COLLAPSE (int *,int *,size_t,TYPE_1__*,size_t const) ;
 int TIM_SORT_STACK_SIZE ;
 size_t compute_minrun (size_t const) ;

void TIM_SORT(SORT_TYPE *dst, const size_t size) {
  size_t minrun;
  TEMP_STORAGE_T _store, *store;
  TIM_SORT_RUN_T run_stack[TIM_SORT_STACK_SIZE];
  size_t stack_curr = 0;
  size_t curr = 0;


  if (size <= 1) {
    return;
  }

  if (size < 64) {
    BINARY_INSERTION_SORT(dst, size);
    return;
  }


  minrun = compute_minrun(size);

  store = &_store;
  store->alloc = 0;
  store->storage = ((void*)0);

  if (!PUSH_NEXT(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  if (!PUSH_NEXT(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  if (!PUSH_NEXT(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  while (1) {
    if (!CHECK_INVARIANT(run_stack, stack_curr)) {
      stack_curr = TIM_SORT_COLLAPSE(dst, run_stack, stack_curr, store, size);
      continue;
    }

    if (!PUSH_NEXT(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
      return;
    }
  }
}
