
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_9__ {scalar_t__ attisdropped; } ;
struct TYPE_8__ {int natts; } ;
typedef int RewriteState ;
typedef int HeapTuple ;
typedef int Datum ;


 TYPE_6__* TupleDescAttr (TYPE_1__*,int) ;
 int heap_deform_tuple (int ,TYPE_1__*,int *,int*) ;
 int heap_form_tuple (TYPE_1__*,int *,int*) ;
 int heap_freetuple (int ) ;
 int rewrite_heap_tuple (int ,int ,int ) ;

__attribute__((used)) static void
reform_and_rewrite_tuple(HeapTuple tuple, TupleDesc oldTupDesc, TupleDesc newTupDesc, Datum *values,
       bool *isnull, RewriteState rwstate)
{
 HeapTuple copiedTuple;
 int i;

 heap_deform_tuple(tuple, oldTupDesc, values, isnull);


 for (i = 0; i < newTupDesc->natts; i++)
 {
  if (TupleDescAttr(newTupDesc, i)->attisdropped)
   isnull[i] = 1;
 }

 copiedTuple = heap_form_tuple(newTupDesc, values, isnull);


 rewrite_heap_tuple(rwstate, tuple, copiedTuple);

 heap_freetuple(copiedTuple);
}
