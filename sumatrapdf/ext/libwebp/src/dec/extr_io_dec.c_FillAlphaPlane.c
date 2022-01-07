
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memset (int *,int,int) ;

__attribute__((used)) static void FillAlphaPlane(uint8_t* dst, int w, int h, int stride) {
  int j;
  for (j = 0; j < h; ++j) {
    memset(dst, 0xff, w * sizeof(*dst));
    dst += stride;
  }
}
