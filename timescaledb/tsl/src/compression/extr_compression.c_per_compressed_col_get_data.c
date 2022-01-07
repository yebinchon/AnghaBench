
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t int16 ;
struct TYPE_8__ {TYPE_2__ (* try_next ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int is_null; scalar_t__ val; scalar_t__ is_done; } ;
struct TYPE_6__ {size_t decompressed_column_offset; int is_null; TYPE_4__* iterator; scalar_t__ val; int is_compressed; } ;
typedef TYPE_1__ PerCompressedColumn ;
typedef TYPE_2__ DecompressResult ;
typedef scalar_t__ Datum ;


 int ERROR ;
 int elog (int ,char*) ;
 TYPE_2__ stub1 (TYPE_4__*) ;

bool
per_compressed_col_get_data(PerCompressedColumn *per_compressed_col, Datum *decompressed_datums,
       bool *decompressed_is_nulls)
{
 DecompressResult decompressed;
 int16 decompressed_column_offset = per_compressed_col->decompressed_column_offset;


 if (decompressed_column_offset < 0)
  return 1;


 if (!per_compressed_col->is_compressed)
 {
  decompressed_datums[decompressed_column_offset] = per_compressed_col->val;
  decompressed_is_nulls[decompressed_column_offset] = per_compressed_col->is_null;
  return 1;
 }


 if (per_compressed_col->is_null)
 {
  decompressed_is_nulls[decompressed_column_offset] = 1;
  return 1;
 }


 if (per_compressed_col->iterator == ((void*)0))
  elog(ERROR, "tried to decompress more data than was compressed in column");

 decompressed = per_compressed_col->iterator->try_next(per_compressed_col->iterator);
 if (decompressed.is_done)
 {

  per_compressed_col->iterator = ((void*)0);
  decompressed_is_nulls[decompressed_column_offset] = 1;
  return 1;
 }

 decompressed_is_nulls[decompressed_column_offset] = decompressed.is_null;
 if (decompressed.is_null)
  decompressed_datums[decompressed_column_offset] = 0;
 else
  decompressed_datums[decompressed_column_offset] = decompressed.val;

 return 0;
}
