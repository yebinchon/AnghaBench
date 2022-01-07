
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Tuplesortstate ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_7__ {scalar_t__ rows_compressed_into_current_value; int per_row_ctx; } ;
typedef TYPE_1__ RowCompressor ;
typedef int MemoryContext ;
typedef int CommandId ;


 int ExecClearTuple (int *) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int GetCurrentCommandId (int) ;
 scalar_t__ MAX_ROWS_PER_COMPRESSION ;
 int * MakeTupleTableSlotCompat (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int row_compressor_append_row (TYPE_1__*,int *) ;
 int row_compressor_flush (TYPE_1__*,int ,int) ;
 int row_compressor_new_row_is_in_new_group (TYPE_1__*,int *) ;
 int row_compressor_update_group (TYPE_1__*,int *) ;
 int slot_getallattrs (int *) ;
 int tuplesort_gettupleslot (int *,int,int,int *,int *) ;

__attribute__((used)) static void
row_compressor_append_sorted_rows(RowCompressor *row_compressor, Tuplesortstate *sorted_rel,
          TupleDesc sorted_desc)
{
 CommandId mycid = GetCurrentCommandId(1);
 TupleTableSlot *slot = MakeTupleTableSlotCompat(sorted_desc);
 bool got_tuple;
 bool first_iteration = 1;

 for (got_tuple = tuplesort_gettupleslot(sorted_rel,
           1 ,

           0 ,

           slot,
           ((void*)0) );
   got_tuple;
   got_tuple = tuplesort_gettupleslot(sorted_rel,
           1 ,

           0 ,

           slot,
           ((void*)0) ))
 {
  bool changed_groups, compressed_row_is_full;
  MemoryContext old_ctx;
  slot_getallattrs(slot);
  old_ctx = MemoryContextSwitchTo(row_compressor->per_row_ctx);


  if (first_iteration)
  {
   row_compressor_update_group(row_compressor, slot);
   first_iteration = 0;
  }

  changed_groups = row_compressor_new_row_is_in_new_group(row_compressor, slot);
  compressed_row_is_full =
   row_compressor->rows_compressed_into_current_value >= MAX_ROWS_PER_COMPRESSION;
  if (compressed_row_is_full || changed_groups)
  {
   if (row_compressor->rows_compressed_into_current_value > 0)
    row_compressor_flush(row_compressor, mycid, changed_groups);
   if (changed_groups)
    row_compressor_update_group(row_compressor, slot);
  }

  row_compressor_append_row(row_compressor, slot);
  MemoryContextSwitchTo(old_ctx);
  ExecClearTuple(slot);
 }

 if (row_compressor->rows_compressed_into_current_value > 0)
  row_compressor_flush(row_compressor, mycid, 1);

 ExecDropSingleTupleTableSlot(slot);
}
