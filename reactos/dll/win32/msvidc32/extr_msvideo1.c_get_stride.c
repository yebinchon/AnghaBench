
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_stride(int width, int depth)
{
    return ((depth * width + 31) >> 3) & ~3;
}
