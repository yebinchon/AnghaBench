
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int FromLabV4ToLabV2(int x)
{
    return ((x << 8) + 0x80) / 257;
}
