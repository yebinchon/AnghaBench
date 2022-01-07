
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use_or; int type; int * values; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ DimensionValues ;


 TYPE_1__* palloc (int) ;

__attribute__((used)) static DimensionValues *
dimension_values_create(List *values, Oid type, bool use_or)
{
 DimensionValues *dimvalues;

 dimvalues = palloc(sizeof(DimensionValues));
 dimvalues->values = values;
 dimvalues->use_or = use_or;
 dimvalues->type = type;

 return dimvalues;
}
