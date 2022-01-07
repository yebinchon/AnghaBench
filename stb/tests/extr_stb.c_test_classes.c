
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int stb_log2_floor (int) ;

void test_classes(void)
{
   unsigned char size_base[32], size_shift[32];
   int class_to_pages[256];
   int class_to_size[256], cl;
   int lg, size, wasted_pages;
   int kAlignShift = 3;
   int kAlignment = 1 << kAlignShift;
   int kMaxSize = 8 * 4096;
   int kPageShift = 12;
   int kPageSize = (1 << kPageShift);
  int next_class = 1;
  int alignshift = kAlignShift;
  int last_lg = -1;

  for (lg = 0; lg < kAlignShift; lg++) {
    size_base[lg] = 1;
    size_shift[lg] = kAlignShift;
  }

  for (size = kAlignment; size <= kMaxSize; size += (1 << alignshift)) {
    int lg = stb_log2_floor(size);
    if (lg > last_lg) {







      if ((lg >= 7) && (alignshift < 8)) {
        alignshift++;
      }
      size_base[lg] = next_class - ((size-1) >> alignshift);
      size_shift[lg] = alignshift;
    }

    class_to_size[next_class] = size;
    last_lg = lg;

    next_class++;
  }



  wasted_pages = 0;
  for (cl = 1; cl < next_class; cl++) {


    size_t psize = kPageSize;
    const size_t s = class_to_size[cl];
    while ((psize % s) > (psize >> 3)) {
      psize += kPageSize;
    }
    class_to_pages[cl] = (int) (psize >> kPageShift);
    wasted_pages += (int) psize;
  }

  printf("TCMalloc can waste as much as %d memory on one-shot allocations\n", wasted_pages);


  return;
}
