
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PixelsAreSimilar (int const,int const,int) ;
 int assert (int) ;

__attribute__((used)) static int FramesAreSimilar(const uint8_t* const rgba1,
                            const uint8_t* const rgba2,
                            int width, int height, int max_allowed_diff) {
  int i, j;
  assert(max_allowed_diff > 0);
  for (j = 0; j < height; ++j) {
    for (i = 0; i < width; ++i) {
      const int stride = width * 4;
      const size_t offset = j * stride + i;
      if (!PixelsAreSimilar(rgba1[offset], rgba2[offset], max_allowed_diff)) {
        return 0;
      }
    }
  }
  return 1;
}
