
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int schema; } ;
typedef TYPE_1__ PartitioningFunc ;
typedef int List ;


 int * list_make2 (int ,int ) ;
 int makeString (int ) ;

List *
ts_partitioning_func_qualified_name(PartitioningFunc *pf)
{
 return list_make2(makeString(pf->schema), makeString(pf->name));
}
