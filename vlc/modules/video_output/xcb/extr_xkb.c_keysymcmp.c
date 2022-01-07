
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int keysymcmp (const void *pa, const void *pb)
{
    int a = *(const uint32_t *)pa;
    int b = *(const uint32_t *)pb;

    return a - b;
}
