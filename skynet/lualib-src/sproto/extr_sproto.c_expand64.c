
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint64_t
expand64(uint32_t v) {
 uint64_t value = v;
 if (value & 0x80000000) {
  value |= (uint64_t)~0 << 32 ;
 }
 return value;
}
