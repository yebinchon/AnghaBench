
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;



__attribute__((used)) static inline uint32_t
unpack_uint32(const uint8_t * buf) {
 return buf[0] | buf[1]<<8 | buf[2]<<16 | buf[3]<<24;
}
