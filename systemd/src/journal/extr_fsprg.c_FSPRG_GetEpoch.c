
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int read_secpar (void const*) ;
 int uint64_import (void const*,int) ;

uint64_t FSPRG_GetEpoch(const void *state) {
        uint16_t secpar;
        secpar = read_secpar(state + 0);
        return uint64_import(state + 2 + 2 * secpar / 8, 8);
}
