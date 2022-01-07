
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int ITransformOne (int const*,int const*,int *) ;

__attribute__((used)) static void ITransform_C(const uint8_t* ref, const int16_t* in, uint8_t* dst,
                         int do_two) {
  ITransformOne(ref, in, dst);
  if (do_two) {
    ITransformOne(ref + 4, in + 16, dst + 4);
  }
}
