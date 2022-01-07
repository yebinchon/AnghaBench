
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int VP8RGBToY (int const,int const,int const,int ) ;
 int YUV_HALF ;

__attribute__((used)) static void ConvertARGBToY_C(const uint32_t* argb, uint8_t* y, int width) {
  int i;
  for (i = 0; i < width; ++i) {
    const uint32_t p = argb[i];
    y[i] = VP8RGBToY((p >> 16) & 0xff, (p >> 8) & 0xff, (p >> 0) & 0xff,
                     YUV_HALF);
  }
}
