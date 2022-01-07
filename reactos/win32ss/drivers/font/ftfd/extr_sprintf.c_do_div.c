
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
__inline
int
do_div(long long *n, int base)
{
    int a;
    a = ((unsigned long long) *n) % (unsigned) base;
    *n = ((unsigned long long) *n) / (unsigned) base;
    return a;
}
