
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int GetBits (int const* const,size_t,int,int*,int * const) ;

__attribute__((used)) static int GetSignedBits(const uint8_t* const data, size_t data_size, size_t nb,
                         int* val, uint64_t* const bit_pos) {
  int sign;
  if (!GetBits(data, data_size, nb, val, bit_pos)) return 0;
  if (!GetBits(data, data_size, 1, &sign, bit_pos)) return 0;
  if (sign) *val = -(*val);
  return 1;
}
