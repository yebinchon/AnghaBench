
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int cmpsrc (const void *a, const void *b)
{
    const uint32_t *pa = a, *pb = b;
    uint32_t idxa = *pa, idxb = *pb;

    return (idxa != idxb) ? ((idxa < idxb) ? -1 : +1) : 0;
}
