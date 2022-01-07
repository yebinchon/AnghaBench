
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void
uint32_to_uint64(int negative, uint8_t *buffer) {
 if (negative) {
  buffer[4] = 0xff;
  buffer[5] = 0xff;
  buffer[6] = 0xff;
  buffer[7] = 0xff;
 } else {
  buffer[4] = 0;
  buffer[5] = 0;
  buffer[6] = 0;
  buffer[7] = 0;
 }
}
