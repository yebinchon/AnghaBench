
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * storage; } ;
struct TYPE_6__ {size_t length; size_t start; } ;
typedef TYPE_1__ TIM_SORT_RUN_T ;
typedef TYPE_2__ TEMP_STORAGE_T ;
typedef int SORT_TYPE ;


 int MIN (size_t const,size_t const) ;
 scalar_t__ SORT_CMP (int ,int ) ;
 int TIM_SORT_RESIZE (TYPE_2__*,int ) ;
 int memcpy (int *,int *,size_t const) ;

__attribute__((used)) static void TIM_SORT_MERGE(SORT_TYPE *dst, const TIM_SORT_RUN_T *stack, const int stack_curr,
                           TEMP_STORAGE_T *store) {
  const size_t A = stack[stack_curr - 2].length;
  const size_t B = stack[stack_curr - 1].length;
  const size_t curr = stack[stack_curr - 2].start;
  SORT_TYPE *storage;
  size_t i, j, k;
  TIM_SORT_RESIZE(store, MIN(A, B));
  storage = store->storage;


  if (A < B) {
    memcpy(storage, &dst[curr], A * sizeof(SORT_TYPE));
    i = 0;
    j = curr + A;

    for (k = curr; k < curr + A + B; k++) {
      if ((i < A) && (j < curr + A + B)) {
        if (SORT_CMP(storage[i], dst[j]) <= 0) {
          dst[k] = storage[i++];
        } else {
          dst[k] = dst[j++];
        }
      } else if (i < A) {
        dst[k] = storage[i++];
      } else {
        break;
      }
    }
  } else {

    memcpy(storage, &dst[curr + A], B * sizeof(SORT_TYPE));
    i = B;
    j = curr + A;
    k = curr + A + B;

    while (k-- > curr) {
      if ((i > 0) && (j > curr)) {
        if (SORT_CMP(dst[j - 1], storage[i - 1]) > 0) {
          dst[k] = dst[--j];
        } else {
          dst[k] = storage[--i];
        }
      } else if (i > 0) {
        dst[k] = storage[--i];
      } else {
        break;
      }
    }
  }
}
