
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 unsigned int type_memsize_and_alignment (int const*,unsigned int*) ;

unsigned int type_memsize(const type_t *t)
{
    unsigned int align = 0;
    return type_memsize_and_alignment( t, &align );
}
