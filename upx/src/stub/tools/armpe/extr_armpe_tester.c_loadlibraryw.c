
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int loadlibraryw(const unsigned short *name)
{
    return name[0] + name[1] * 0x100 + name[2] * 0x10000;
}
