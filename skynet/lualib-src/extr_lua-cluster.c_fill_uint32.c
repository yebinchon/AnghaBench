
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
fill_uint32(uint8_t * buf, uint32_t n) {
 buf[0] = n & 0xff;
 buf[1] = (n >> 8) & 0xff;
 buf[2] = (n >> 16) & 0xff;
 buf[3] = (n >> 24) & 0xff;
}
