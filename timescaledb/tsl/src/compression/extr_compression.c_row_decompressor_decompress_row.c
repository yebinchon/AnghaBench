
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int16 ;
struct TYPE_3__ {size_t num_compressed_columns; int bistate; int mycid; int out_rel; int decompressed_is_nulls; int decompressed_datums; int out_desc; int * per_compressed_cols; } ;
typedef TYPE_1__ RowDecompressor ;
typedef int HeapTuple ;


 int heap_form_tuple (int ,int ,int ) ;
 int heap_freetuple (int ) ;
 int heap_insert (int ,int ,int ,int ,int ) ;
 int per_compressed_col_get_data (int *,int ,int ) ;

__attribute__((used)) static void
row_decompressor_decompress_row(RowDecompressor *row_decompressor)
{



 bool wrote_data = 0;
 bool is_done = 0;
 do
 {

  is_done = 1;
  for (int16 col = 0; col < row_decompressor->num_compressed_columns; col++)
  {
   bool col_is_done =
    per_compressed_col_get_data(&row_decompressor->per_compressed_cols[col],
           row_decompressor->decompressed_datums,
           row_decompressor->decompressed_is_nulls);
   is_done &= col_is_done;
  }




  if (!is_done || !wrote_data)
  {

   HeapTuple decompressed_tuple = heap_form_tuple(row_decompressor->out_desc,
                 row_decompressor->decompressed_datums,
                 row_decompressor->decompressed_is_nulls);
   heap_insert(row_decompressor->out_rel,
      decompressed_tuple,
      row_decompressor->mycid,
      0 ,
      row_decompressor->bistate);

   heap_freetuple(decompressed_tuple);
   wrote_data = 1;
  }
 } while (!is_done);
}
