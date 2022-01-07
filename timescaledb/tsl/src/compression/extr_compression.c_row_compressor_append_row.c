
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_9__ {int (* append_val ) (TYPE_3__*,int ) ;int (* append_null ) (TYPE_3__*) ;} ;
struct TYPE_8__ {int n_input_columns; int rows_compressed_into_current_value; TYPE_1__* per_column; } ;
struct TYPE_7__ {int * min_max_metadata_builder; TYPE_3__* compressor; } ;
typedef TYPE_2__ RowCompressor ;
typedef int Datum ;
typedef TYPE_3__ Compressor ;


 int AttrOffsetGetAttrNumber (int) ;
 int segment_meta_min_max_builder_update_null (int *) ;
 int segment_meta_min_max_builder_update_val (int *,int ) ;
 int slot_getattr (int *,int ,int*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*,int ) ;

__attribute__((used)) static void
row_compressor_append_row(RowCompressor *row_compressor, TupleTableSlot *row)
{
 int col;
 for (col = 0; col < row_compressor->n_input_columns; col++)
 {
  Compressor *compressor = row_compressor->per_column[col].compressor;
  bool is_null;
  Datum val;


  if (compressor == ((void*)0))
   continue;



  val = slot_getattr(row, AttrOffsetGetAttrNumber(col), &is_null);
  if (is_null)
  {
   compressor->append_null(compressor);
   if (row_compressor->per_column[col].min_max_metadata_builder != ((void*)0))
    segment_meta_min_max_builder_update_null(
     row_compressor->per_column[col].min_max_metadata_builder);
  }
  else
  {
   compressor->append_val(compressor, val);
   if (row_compressor->per_column[col].min_max_metadata_builder != ((void*)0))
    segment_meta_min_max_builder_update_val(row_compressor->per_column[col]
               .min_max_metadata_builder,
              val);
  }
 }

 row_compressor->rows_compressed_into_current_value += 1;
}
