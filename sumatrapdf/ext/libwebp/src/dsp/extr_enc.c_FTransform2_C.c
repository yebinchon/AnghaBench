
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int VP8FTransform (int const*,int const*,int *) ;

__attribute__((used)) static void FTransform2_C(const uint8_t* src, const uint8_t* ref,
                          int16_t* out) {
  VP8FTransform(src, ref, out);
  VP8FTransform(src + 4, ref + 4, out + 16);
}
