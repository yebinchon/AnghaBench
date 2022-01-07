
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typalign; int typbyval; int typlen; int element_type; } ;
typedef int List ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_1__ ArrayMetaState ;
typedef int ArrayIterator ;


 int Assert (int) ;
 int * DatumGetArrayTypeP (int ) ;
 int * NIL ;
 int TEXTOID ;
 int array_create_iterator (int *,int,TYPE_1__*) ;
 scalar_t__ array_iterate (int ,int *,int*) ;
 int deconstruct_array (int *,int ,int ,int ,int ,int **,int *,int*) ;
 int def_elem_from_texts (int *,int) ;
 int get_typlenbyvalalign (int ,int *,int *,int *) ;
 int * lappend (int *,int ) ;

__attribute__((used)) static List *
def_elems_from_array(ArrayType *with_clause_array)
{
 ArrayMetaState with_clause_meta = { .element_type = TEXTOID };
 ArrayIterator with_clause_iter;
 Datum with_clause_datum;
 bool with_clause_null;
 List *def_elems = NIL;

 get_typlenbyvalalign(with_clause_meta.element_type,
       &with_clause_meta.typlen,
       &with_clause_meta.typbyval,
       &with_clause_meta.typalign);
 with_clause_iter = array_create_iterator(with_clause_array, 1, &with_clause_meta);

 while (array_iterate(with_clause_iter, &with_clause_datum, &with_clause_null))
 {
  Datum *with_clause_fields;
  int with_clause_elems;
  ArrayType *with_clause = DatumGetArrayTypeP(with_clause_datum);
  Assert(!with_clause_null);
  deconstruct_array(with_clause,
        TEXTOID,
        with_clause_meta.typlen,
        with_clause_meta.typbyval,
        with_clause_meta.typalign,
        &with_clause_fields,
        ((void*)0),
        &with_clause_elems);
  def_elems = lappend(def_elems, def_elem_from_texts(with_clause_fields, with_clause_elems));
 }
 return def_elems;
}
