
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16 ;
typedef int Tuplesortstate ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {int natts; } ;
typedef int RowCompressor ;
typedef int Relation ;
typedef int Oid ;
typedef int ColumnCompressionInfo ;


 int Assert (int) ;
 int ExclusiveLock ;
 int RelationClose (int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int * compress_chunk_populate_keys (int ,int const**,int,int*,int const***) ;
 int * compress_chunk_sort_relation (int ,int,int const**) ;
 int reindex_relation (int ,int ,int ) ;
 int relation_open (int ,int ) ;
 int row_compressor_append_sorted_rows (int *,int *,TYPE_1__*) ;
 int row_compressor_finish (int *) ;
 int row_compressor_init (int *,TYPE_1__*,int ,int,int const**,int *,int) ;
 int truncate_relation (int ) ;
 int tuplesort_end (int *) ;

void
compress_chunk(Oid in_table, Oid out_table, const ColumnCompressionInfo **column_compression_info,
      int num_compression_infos)
{
 int n_keys;
 const ColumnCompressionInfo **keys;






 Relation in_rel = relation_open(in_table, ExclusiveLock);





 Relation out_rel = relation_open(out_table, ExclusiveLock);


 int16 *in_column_offsets = compress_chunk_populate_keys(in_table,
               column_compression_info,
               num_compression_infos,
               &n_keys,
               &keys);

 TupleDesc in_desc = RelationGetDescr(in_rel);
 TupleDesc out_desc = RelationGetDescr(out_rel);

 Tuplesortstate *sorted_rel = compress_chunk_sort_relation(in_rel, n_keys, keys);

 RowCompressor row_compressor;

 Assert(num_compression_infos <= in_desc->natts);
 Assert(num_compression_infos <= out_desc->natts);

 row_compressor_init(&row_compressor,
      in_desc,
      out_rel,
      num_compression_infos,
      column_compression_info,
      in_column_offsets,
      out_desc->natts);

 row_compressor_append_sorted_rows(&row_compressor, sorted_rel, in_desc);

 row_compressor_finish(&row_compressor);

 tuplesort_end(sorted_rel);

 truncate_relation(in_table);



 reindex_relation(out_table, 0, 0);

 RelationClose(out_rel);
 RelationClose(in_rel);
}
