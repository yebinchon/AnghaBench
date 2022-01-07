
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
little_endian(uint32_t v) {
 union {
  uint32_t v;
  uint8_t b[4];
 } u;
 u.v = v;
 return u.b[0] | u.b[1] << 8 | u.b[2] << 16 | u.b[3] << 24;
}
