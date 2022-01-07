
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMP (void const*,void const*) ;

int trivial_compare_func(const void *a, const void *b) {
        return CMP(a, b);
}
