
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int FromLabV2ToLabV4(int x)
{
    int a;

    a = ((x << 8) | x) >> 8;
    if ( a > 0xffff) return 0xffff;
    return a;
}
