
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int * arg; int * defname; int * defnamespace; } ;
struct TYPE_7__ {int natts; } ;
typedef int HeapTuple ;
typedef TYPE_2__ DefElem ;
typedef int Datum ;


 int Assert (int) ;
 int BoolGetDatum (int) ;
 int CStringGetTextDatum (int *) ;
 int * defGetString (TYPE_2__*) ;
 int heap_form_tuple (TYPE_1__*,int *,int*) ;
 void* palloc0 (int) ;

__attribute__((used)) static HeapTuple
create_filter_tuple(TupleDesc tuple_desc, DefElem *d, bool within)
{
 Datum *values = palloc0(sizeof(*values) * tuple_desc->natts);
 bool *nulls = palloc0(sizeof(*nulls) * tuple_desc->natts);

 Assert(tuple_desc->natts >= 4);

 if (d->defnamespace != ((void*)0))
  values[0] = CStringGetTextDatum(d->defnamespace);
 else
  nulls[0] = 1;

 if (d->defname != ((void*)0))
  values[1] = CStringGetTextDatum(d->defname);
 else
  nulls[1] = 1;

 if (d->arg != ((void*)0))
  values[2] = CStringGetTextDatum(defGetString(d));
 else
  nulls[2] = 1;

 values[3] = BoolGetDatum(within);
 return heap_form_tuple(tuple_desc, values, nulls);
}
