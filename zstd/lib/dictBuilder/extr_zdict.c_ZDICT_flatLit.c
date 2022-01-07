
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ZDICT_flatLit(unsigned* countLit)
{
    int u;
    for (u=1; u<256; u++) countLit[u] = 2;
    countLit[0] = 4;
    countLit[253] = 1;
    countLit[254] = 1;
}
