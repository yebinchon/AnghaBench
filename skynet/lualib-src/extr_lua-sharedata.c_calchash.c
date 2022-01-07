
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
calchash(const char * str, size_t l) {
 uint32_t h = (uint32_t)l;
 size_t l1;
 size_t step = (l >> 5) + 1;
 for (l1 = l; l1 >= step; l1 -= step) {
  h = h ^ ((h<<5) + (h>>2) + (uint8_t)(str[l1 - 1]));
 }
 return h;
}
