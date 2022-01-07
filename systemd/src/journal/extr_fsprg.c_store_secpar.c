
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void store_secpar(void *buf, uint16_t secpar) {
        secpar = secpar / 16 - 1;
        ((uint8_t*) buf)[0] = (secpar >> 8) & 0xff;
        ((uint8_t*) buf)[1] = (secpar >> 0) & 0xff;
}
