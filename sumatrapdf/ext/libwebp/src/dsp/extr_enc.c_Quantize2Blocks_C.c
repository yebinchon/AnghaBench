
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int VP8Matrix ;


 int VP8EncQuantizeBlock (int *,int *,int const* const) ;

__attribute__((used)) static int Quantize2Blocks_C(int16_t in[32], int16_t out[32],
                             const VP8Matrix* const mtx) {
  int nz;
  nz = VP8EncQuantizeBlock(in + 0 * 16, out + 0 * 16, mtx) << 0;
  nz |= VP8EncQuantizeBlock(in + 1 * 16, out + 1 * 16, mtx) << 1;
  return nz;
}
