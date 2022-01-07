
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int dist_index_comp(const void *a, const void *b)
{
    const uint64_t *_a = a;
    const uint64_t *_b = b;

    if (*_a < *_b)
        return -1;

    if (*_a > *_b)
        return 1;

    return 0;
}
