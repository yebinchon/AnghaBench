
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int memrev64 (int *) ;

uint64_t intrev64(uint64_t v) {
    memrev64(&v);
    return v;
}
