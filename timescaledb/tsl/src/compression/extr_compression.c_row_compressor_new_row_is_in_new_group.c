
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int * segment_info; int * compressor; } ;
struct TYPE_4__ {int n_input_columns; TYPE_2__* per_column; } ;
typedef TYPE_1__ RowCompressor ;
typedef TYPE_2__ PerColumn ;
typedef int Datum ;


 int Assert (int ) ;
 int AttrOffsetGetAttrNumber (int) ;
 int CharGetDatum (int ) ;
 int segment_info_datum_is_in_group (int *,int ,int) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static bool
row_compressor_new_row_is_in_new_group(RowCompressor *row_compressor, TupleTableSlot *row)
{
 int col;
 for (col = 0; col < row_compressor->n_input_columns; col++)
 {
  PerColumn *column = &row_compressor->per_column[col];
  Datum datum = CharGetDatum(0);
  bool is_null;

  if (column->segment_info == ((void*)0))
   continue;

  Assert(column->compressor == ((void*)0));

  datum = slot_getattr(row, AttrOffsetGetAttrNumber(col), &is_null);

  if (!segment_info_datum_is_in_group(column->segment_info, datum, is_null))
   return 1;
 }

 return 0;
}
