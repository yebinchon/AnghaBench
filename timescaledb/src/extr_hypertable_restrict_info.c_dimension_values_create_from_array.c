
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int consttype; int constvalue; } ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int DimensionValues ;
typedef int Datum ;
typedef TYPE_1__ Const ;
typedef int ArrayIterator ;


 int DatumGetArrayTypeP (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int * NIL ;
 int array_create_iterator (int ,int ,int *) ;
 scalar_t__ array_iterate (int ,int *,int*) ;
 int * dimension_values_create (int *,scalar_t__,int) ;
 int elog (int ,char*,int ) ;
 scalar_t__ get_element_type (int ) ;
 int * lappend (int *,int ) ;

__attribute__((used)) static DimensionValues *
dimension_values_create_from_array(Const *c, bool user_or)
{
 ArrayIterator iterator = array_create_iterator(DatumGetArrayTypeP(c->constvalue), 0, ((void*)0));
 Datum elem = (Datum) ((void*)0);
 bool isnull;
 List *values = NIL;
 Oid base_el_type;

 while (array_iterate(iterator, &elem, &isnull))
 {
  if (!isnull)
   values = lappend(values, DatumGetPointer(elem));
 }


 base_el_type = get_element_type(c->consttype);
 if (base_el_type == InvalidOid)
  elog(ERROR, "Couldn't get base element type from array type: %d", c->consttype);

 return dimension_values_create(values, base_el_type, user_or);
}
