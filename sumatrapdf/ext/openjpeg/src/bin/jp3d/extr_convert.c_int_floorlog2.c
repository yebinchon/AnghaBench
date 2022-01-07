
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int int_floorlog2(int a)
{
    int l;
    for (l = 0; a > 1; l++) {
        a >>= 1;
    }
    return l;
}
