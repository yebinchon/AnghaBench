
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void CleanupTransparentPixels(uint32_t* rgba,
                                     uint32_t width, uint32_t height) {
  const uint32_t* const rgba_end = rgba + width * height;
  while (rgba < rgba_end) {
    const uint8_t alpha = (*rgba >> 24) & 0xff;
    if (alpha == 0) {
      *rgba = 0;
    }
    ++rgba;
  }
}
