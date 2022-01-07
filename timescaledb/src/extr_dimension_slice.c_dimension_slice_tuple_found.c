
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; int mctx; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int MemoryContext ;
typedef int DimensionSlice ;


 int MemoryContextSwitchTo (int ) ;
 int SCAN_DONE ;
 int * dimension_slice_from_tuple (int ) ;

__attribute__((used)) static ScanTupleResult
dimension_slice_tuple_found(TupleInfo *ti, void *data)
{
 DimensionSlice **slice = data;
 MemoryContext old = MemoryContextSwitchTo(ti->mctx);

 *slice = dimension_slice_from_tuple(ti->tuple);
 MemoryContextSwitchTo(old);
 return SCAN_DONE;
}
