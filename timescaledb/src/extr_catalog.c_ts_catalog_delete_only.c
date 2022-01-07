
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_self; } ;
typedef int Relation ;
typedef TYPE_1__* HeapTuple ;


 int CatalogTupleDelete (int ,int *) ;

void
ts_catalog_delete_only(Relation rel, HeapTuple tuple)
{
 CatalogTupleDelete(rel, &tuple->t_self);
}
