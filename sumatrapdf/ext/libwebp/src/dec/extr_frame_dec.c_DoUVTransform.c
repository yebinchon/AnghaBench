
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;


 int VP8TransformDCUV (int const* const,int * const) ;
 int VP8TransformUV (int const* const,int * const) ;

__attribute__((used)) static void DoUVTransform(uint32_t bits, const int16_t* const src,
                          uint8_t* const dst) {
  if (bits & 0xff) {
    if (bits & 0xaa) {
      VP8TransformUV(src, dst);
    } else {
      VP8TransformDCUV(src, dst);
    }
  }
}
