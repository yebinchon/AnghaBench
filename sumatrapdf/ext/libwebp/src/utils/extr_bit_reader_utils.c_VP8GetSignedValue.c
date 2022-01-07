
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const int32_t ;
typedef int VP8BitReader ;


 scalar_t__ VP8Get (int * const,char const*) ;
 int VP8GetValue (int * const,int,char const*) ;

int32_t VP8GetSignedValue(VP8BitReader* const br, int bits,
                          const char label[]) {
  const int value = VP8GetValue(br, bits, label);
  return VP8Get(br, label) ? -value : value;
}
