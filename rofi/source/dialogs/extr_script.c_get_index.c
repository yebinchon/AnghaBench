
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UINT_MAX ;

__attribute__((used)) static inline unsigned int get_index ( unsigned int length, int index )
{
    if ( index >= 0 ) return index;
    if ( ((unsigned int)-index) <= length ) return (length+index);

    return UINT_MAX;
}
