
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SORT_TYPE ;


 int BINARY_INSERTION_SORT_START (int *,int,size_t const) ;

void BINARY_INSERTION_SORT(SORT_TYPE *dst, const size_t size) {

  if (size <= 1) {
    return;
  }

  BINARY_INSERTION_SORT_START(dst, 1, size);
}
