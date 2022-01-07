
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;


 int const GetLE32 (int const*) ;

__attribute__((used)) static uint32_t ReadLE32(const uint8_t** data) {
  const uint32_t val = GetLE32(*data);
  *data += 4;
  return val;
}
