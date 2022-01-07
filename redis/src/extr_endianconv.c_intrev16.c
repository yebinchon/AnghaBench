
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int memrev16 (int *) ;

uint16_t intrev16(uint16_t v) {
    memrev16(&v);
    return v;
}
