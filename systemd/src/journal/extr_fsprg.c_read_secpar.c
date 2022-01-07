
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t read_secpar(const void *buf) {
        uint16_t secpar;
        secpar =
                (uint16_t)(((uint8_t*) buf)[0]) << 8 |
                (uint16_t)(((uint8_t*) buf)[1]) << 0;
        return 16 * (secpar + 1);
}
