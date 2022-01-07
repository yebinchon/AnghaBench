
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcmp (int const* const,int const* const,int const) ;

__attribute__((used)) static int FramesAreEqual(const uint8_t* const rgba1,
                          const uint8_t* const rgba2, int width, int height) {
  const int stride = width * 4;
  return !memcmp(rgba1, rgba2, stride * height);
}
