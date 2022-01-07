
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cptable {int dummy; } cptable ;


 unsigned int NB_CODEPAGES ;
 union cptable const** cptables ;

const union cptable *wine_cp_enum_table( unsigned int index )
{
    if (index >= NB_CODEPAGES) return ((void*)0);
    return cptables[index];
}
