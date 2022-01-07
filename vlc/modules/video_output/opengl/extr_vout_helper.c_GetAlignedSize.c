
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int GLsizei ;


 int clz (unsigned int) ;

__attribute__((used)) static inline GLsizei GetAlignedSize(unsigned size)
{

    unsigned align = 1 << (8 * sizeof (unsigned) - clz(size));
    return ((align >> 1) == size) ? size : align;
}
