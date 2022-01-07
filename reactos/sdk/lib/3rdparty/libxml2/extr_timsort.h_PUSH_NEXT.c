
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * storage; } ;
struct TYPE_7__ {size_t start; size_t length; } ;
typedef TYPE_1__ TIM_SORT_RUN_T ;
typedef TYPE_2__ TEMP_STORAGE_T ;
typedef int SORT_TYPE ;


 int BINARY_INSERTION_SORT_START (int *,size_t,size_t) ;
 size_t COUNT_RUN (int *,size_t,size_t const) ;
 int TIM_SORT_MERGE (int *,TYPE_1__*,size_t,TYPE_2__*) ;
 int free (int *) ;

__attribute__((used)) static __inline int PUSH_NEXT(SORT_TYPE *dst,
                              const size_t size,
                              TEMP_STORAGE_T *store,
                              const size_t minrun,
                              TIM_SORT_RUN_T *run_stack,
                              size_t *stack_curr,
                              size_t *curr) {
  size_t len = COUNT_RUN(dst, *curr, size);
  size_t run = minrun;

  if (run > size - *curr) {
    run = size - *curr;
  }

  if (run > len) {
    BINARY_INSERTION_SORT_START(&dst[*curr], len, run);
    len = run;
  }

  run_stack[*stack_curr].start = *curr;
  run_stack[*stack_curr].length = len;
  (*stack_curr)++;
  *curr += len;

  if (*curr == size) {

    while (*stack_curr > 1) {
      TIM_SORT_MERGE(dst, run_stack, *stack_curr, store);
      run_stack[*stack_curr - 2].length += run_stack[*stack_curr - 1].length;
      (*stack_curr)--;
    }

    if (store->storage != ((void*)0)) {
      free(store->storage);
      store->storage = ((void*)0);
    }

    return 0;
  }

  return 1;
}
