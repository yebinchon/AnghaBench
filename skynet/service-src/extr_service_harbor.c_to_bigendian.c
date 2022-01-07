
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void
to_bigendian(uint8_t *buffer, uint32_t n) {
 buffer[0] = (n >> 24) & 0xff;
 buffer[1] = (n >> 16) & 0xff;
 buffer[2] = (n >> 8) & 0xff;
 buffer[3] = n & 0xff;
}
