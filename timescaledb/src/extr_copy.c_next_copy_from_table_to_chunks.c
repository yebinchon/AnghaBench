
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scandesc; } ;
struct TYPE_5__ {int rel; TYPE_1__ fromctx; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int HeapScanDesc ;
typedef int ExprContext ;
typedef int Datum ;
typedef TYPE_2__ CopyChunkState ;


 int ForwardScanDirection ;
 int HeapTupleGetOid (int ) ;
 int HeapTupleIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int heap_getnext (int ,int ) ;

__attribute__((used)) static bool
next_copy_from_table_to_chunks(CopyChunkState *ccstate, ExprContext *econtext, Datum *values,
          bool *nulls, Oid *tuple_oid)
{
 HeapScanDesc scandesc = ccstate->fromctx.scandesc;
 HeapTuple tuple = heap_getnext(scandesc, ForwardScanDirection);

 if (!HeapTupleIsValid(tuple))
  return 0;

 heap_deform_tuple(tuple, RelationGetDescr(ccstate->rel), values, nulls);
 *tuple_oid = HeapTupleGetOid(tuple);

 return 1;
}
