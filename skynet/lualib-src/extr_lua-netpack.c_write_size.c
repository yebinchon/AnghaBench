
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void
write_size(uint8_t * buffer, int len) {
 buffer[0] = (len >> 8) & 0xff;
 buffer[1] = len & 0xff;
}
