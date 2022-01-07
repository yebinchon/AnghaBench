
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMP (int const,int const) ;

int uint64_compare_func(const uint64_t *a, const uint64_t *b) {
        return CMP(*a, *b);
}
