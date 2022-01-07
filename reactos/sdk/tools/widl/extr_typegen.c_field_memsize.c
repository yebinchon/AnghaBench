
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 unsigned int ROUND_SIZE (unsigned int,unsigned int) ;
 unsigned int type_memsize_and_alignment (int const*,unsigned int*) ;

__attribute__((used)) static unsigned int field_memsize(const type_t *type, unsigned int *offset)
{
    unsigned int align = 0;
    unsigned int size = type_memsize_and_alignment( type, &align );

    *offset = ROUND_SIZE( *offset, align );
    return size;
}
