
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int assert (int ) ;

int WebPRescalerGetScaledDimensions(int src_width, int src_height,
                                    int* const scaled_width,
                                    int* const scaled_height) {
  assert(scaled_width != ((void*)0));
  assert(scaled_height != ((void*)0));
  {
    int width = *scaled_width;
    int height = *scaled_height;


    if (width == 0 && src_height > 0) {
      width =
          (int)(((uint64_t)src_width * height + src_height - 1) / src_height);
    }

    if (height == 0 && src_width > 0) {
      height =
          (int)(((uint64_t)src_height * width + src_width - 1) / src_width);
    }

    if (width <= 0 || height <= 0) {
      return 0;
    }

    *scaled_width = width;
    *scaled_height = height;
    return 1;
  }
}
