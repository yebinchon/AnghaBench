
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int16 ;
struct TYPE_10__ {void* (* finish ) (TYPE_4__*) ;} ;
struct TYPE_9__ {size_t min_metadata_attr_offset; size_t max_metadata_attr_offset; int * min_max_metadata_builder; TYPE_1__* segment_info; TYPE_4__* compressor; } ;
struct TYPE_8__ {size_t n_input_columns; size_t* uncompressed_col_to_compressed_col; int* compressed_is_null; size_t count_metadata_column_offset; scalar_t__ rows_compressed_into_current_value; size_t sequence_num_metadata_column_offset; scalar_t__ sequence_num; int per_row_ctx; void** compressed_values; TYPE_3__* per_column; int bistate; int compressed_table; } ;
struct TYPE_7__ {int is_null; int typ_by_val; void* val; } ;
typedef TYPE_2__ RowCompressor ;
typedef TYPE_3__ PerColumn ;
typedef int HeapTuple ;
typedef TYPE_4__ Compressor ;
typedef int CommandId ;


 int Assert (int) ;
 int DatumGetPointer (void*) ;
 int ERROR ;
 void* Int32GetDatum (scalar_t__) ;
 int MemoryContextReset (int ) ;
 scalar_t__ PG_INT32_MAX ;
 void* PointerGetDatum (void*) ;
 int RelationGetDescr (int ) ;
 scalar_t__ SEQUENCE_NUM_GAP ;
 int elog (int ,char*) ;
 int heap_form_tuple (int ,void**,int*) ;
 int heap_insert (int ,int ,int ,int ,int ) ;
 int pfree (int ) ;
 int segment_meta_min_max_builder_empty (int *) ;
 void* segment_meta_min_max_builder_max (int *) ;
 void* segment_meta_min_max_builder_min (int *) ;
 int segment_meta_min_max_builder_reset (int *) ;
 void* stub1 (TYPE_4__*) ;

__attribute__((used)) static void
row_compressor_flush(RowCompressor *row_compressor, CommandId mycid, bool changed_groups)
{
 int16 col;
 HeapTuple compressed_tuple;

 for (col = 0; col < row_compressor->n_input_columns; col++)
 {
  PerColumn *column = &row_compressor->per_column[col];
  Compressor *compressor;
  int16 compressed_col;
  if (column->compressor == ((void*)0) && column->segment_info == ((void*)0))
   continue;

  compressor = column->compressor;
  compressed_col = row_compressor->uncompressed_col_to_compressed_col[col];

  Assert(compressed_col >= 0);

  if (compressor != ((void*)0))
  {
   void *compressed_data;
   Assert(column->segment_info == ((void*)0));

   compressed_data = compressor->finish(compressor);


   row_compressor->compressed_is_null[compressed_col] = compressed_data == ((void*)0);
   if (compressed_data != ((void*)0))
    row_compressor->compressed_values[compressed_col] =
     PointerGetDatum(compressed_data);

   if (column->min_max_metadata_builder != ((void*)0))
   {
    Assert(column->min_metadata_attr_offset >= 0);
    Assert(column->max_metadata_attr_offset >= 0);

    if (!segment_meta_min_max_builder_empty(column->min_max_metadata_builder))
    {
     Assert(compressed_data != ((void*)0));
     row_compressor->compressed_is_null[column->min_metadata_attr_offset] = 0;
     row_compressor->compressed_is_null[column->max_metadata_attr_offset] = 0;

     row_compressor->compressed_values[column->min_metadata_attr_offset] =
      segment_meta_min_max_builder_min(column->min_max_metadata_builder);
     row_compressor->compressed_values[column->max_metadata_attr_offset] =
      segment_meta_min_max_builder_max(column->min_max_metadata_builder);
    }
    else
    {
     Assert(compressed_data == ((void*)0));
     row_compressor->compressed_is_null[column->min_metadata_attr_offset] = 1;
     row_compressor->compressed_is_null[column->max_metadata_attr_offset] = 1;
    }
   }
  }
  else if (column->segment_info != ((void*)0))
  {
   row_compressor->compressed_values[compressed_col] = column->segment_info->val;
   row_compressor->compressed_is_null[compressed_col] = column->segment_info->is_null;
  }
 }

 row_compressor->compressed_values[row_compressor->count_metadata_column_offset] =
  Int32GetDatum(row_compressor->rows_compressed_into_current_value);
 row_compressor->compressed_is_null[row_compressor->count_metadata_column_offset] = 0;

 row_compressor->compressed_values[row_compressor->sequence_num_metadata_column_offset] =
  Int32GetDatum(row_compressor->sequence_num);
 row_compressor->compressed_is_null[row_compressor->sequence_num_metadata_column_offset] = 0;


 if (row_compressor->sequence_num > PG_INT32_MAX - SEQUENCE_NUM_GAP)
  elog(ERROR, "sequence id overflow");

 row_compressor->sequence_num += SEQUENCE_NUM_GAP;

 compressed_tuple = heap_form_tuple(RelationGetDescr(row_compressor->compressed_table),
            row_compressor->compressed_values,
            row_compressor->compressed_is_null);
 heap_insert(row_compressor->compressed_table,
    compressed_tuple,
    mycid,
    0 ,
    row_compressor->bistate);



 for (col = 0; col < row_compressor->n_input_columns; col++)
 {
  PerColumn *column = &row_compressor->per_column[col];
  int16 compressed_col;
  if (column->compressor == ((void*)0) && column->segment_info == ((void*)0))
   continue;

  compressed_col = row_compressor->uncompressed_col_to_compressed_col[col];
  Assert(compressed_col >= 0);
  if (row_compressor->compressed_is_null[compressed_col])
   continue;


  if (column->segment_info != ((void*)0) && !changed_groups)
   continue;

  if (column->compressor != ((void*)0) || !column->segment_info->typ_by_val)
   pfree(DatumGetPointer(row_compressor->compressed_values[compressed_col]));

  if (column->min_max_metadata_builder != ((void*)0))
  {

   if (!row_compressor->compressed_is_null[column->min_metadata_attr_offset])
   {
    row_compressor->compressed_values[column->min_metadata_attr_offset] = 0;
    row_compressor->compressed_is_null[column->min_metadata_attr_offset] = 1;
   }
   if (!row_compressor->compressed_is_null[column->max_metadata_attr_offset])
   {
    row_compressor->compressed_values[column->max_metadata_attr_offset] = 0;
    row_compressor->compressed_is_null[column->max_metadata_attr_offset] = 1;
   }
   segment_meta_min_max_builder_reset(column->min_max_metadata_builder);
  }

  row_compressor->compressed_values[compressed_col] = 0;
  row_compressor->compressed_is_null[compressed_col] = 1;
 }

 row_compressor->rows_compressed_into_current_value = 0;
 MemoryContextReset(row_compressor->per_row_ctx);
}
