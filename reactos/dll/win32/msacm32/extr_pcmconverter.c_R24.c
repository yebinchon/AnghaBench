
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int R24(const unsigned char* src)
{
    return ((int)src[0] | (int)src[1] << 8 | (int)src[2] << 16) << 8;
}
