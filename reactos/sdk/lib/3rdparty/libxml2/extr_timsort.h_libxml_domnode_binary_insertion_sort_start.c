
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SORT_TYPE ;


 size_t BINARY_INSERTION_FIND (int *,int ,size_t) ;
 scalar_t__ SORT_CMP (int ,int ) ;

__attribute__((used)) static void BINARY_INSERTION_SORT_START(SORT_TYPE *dst, const size_t start, const size_t size) {
  size_t i;

  for (i = start; i < size; i++) {
    size_t j;
    SORT_TYPE x;
    size_t location;


    if (SORT_CMP(dst[i - 1], dst[i]) <= 0) {
      continue;
    }


    x = dst[i];
    location = BINARY_INSERTION_FIND(dst, x, i);

    for (j = i - 1; j >= location; j--) {
      dst[j + 1] = dst[j];

      if (j == 0) {
        break;
      }
    }

    dst[location] = x;
  }
}
