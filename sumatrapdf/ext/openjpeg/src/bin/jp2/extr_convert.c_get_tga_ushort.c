
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short get_tga_ushort(const unsigned char *data)
{
    return (unsigned short)(data[0] | (data[1] << 8));
}
