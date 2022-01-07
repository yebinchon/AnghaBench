
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int HALF ;
 int MFIX ;
 int assert (int) ;

__attribute__((used)) static uint32_t Mult(uint8_t x, uint32_t mult) {
  const uint32_t v = (x * mult + HALF) >> MFIX;
  assert(v <= 255);
  return v;
}
