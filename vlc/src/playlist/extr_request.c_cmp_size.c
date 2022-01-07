
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cmp_size(const void *lhs, const void *rhs)
{
    size_t a = *(size_t *) lhs;
    size_t b = *(size_t *) rhs;
    if (a < b)
        return -1;
    if (a == b)
        return 0;
    return 1;
}
