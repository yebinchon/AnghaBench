
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void
buffer_write16be(uint8_t *buf, uint16_t value) {
    buf[0] = value >> 8;
    buf[1] = value;
}
