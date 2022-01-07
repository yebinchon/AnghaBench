
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int type_oid; } ;
struct TYPE_10__ {scalar_t__ num_compressed_columns; void* decompressed_datums; void* decompressed_is_nulls; int bistate; int per_compressed_cols; int mycid; int out_rel; TYPE_1__* out_desc; } ;
struct TYPE_9__ {scalar_t__ natts; } ;
typedef int ScanKey ;
typedef TYPE_2__ RowDecompressor ;
typedef int Relation ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int * HeapTuple ;
typedef int HeapScanDesc ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int CUSTOM_TYPE_COMPRESSED_DATA ;
 int CurrentMemoryContext ;
 int ExclusiveLock ;
 int ForwardScanDirection ;
 int FreeBulkInsertState (int ) ;
 int GetBulkInsertState () ;
 int GetCurrentCommandId (int) ;
 int GetLatestSnapshot () ;
 int HeapTupleIsValid (int *) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (int ) ;
 int RelationClose (int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int create_per_compressed_column (TYPE_1__*,TYPE_1__*,int ,int ) ;
 int heap_beginscan (int ,int ,int ,int ) ;
 int heap_deform_tuple (int *,TYPE_1__*,int *,int*) ;
 int heap_endscan (int ) ;
 int * heap_getnext (int ,int ) ;
 void* palloc (int) ;
 int populate_per_compressed_columns_from_data (int ,int,int *,int*) ;
 int reindex_relation (int ,int ,int ) ;
 int relation_open (int ,int ) ;
 int row_decompressor_decompress_row (TYPE_2__*) ;
 TYPE_3__* ts_custom_type_cache_get (int ) ;

void
decompress_chunk(Oid in_table, Oid out_table)
{
 Relation out_rel = relation_open(out_table, ExclusiveLock);





 Relation in_rel = relation_open(in_table, ExclusiveLock);


 TupleDesc in_desc = RelationGetDescr(in_rel);
 TupleDesc out_desc = RelationGetDescr(out_rel);

 Oid compressed_data_type_oid = ts_custom_type_cache_get(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid;

 Assert(in_desc->natts >= out_desc->natts);
 Assert(OidIsValid(compressed_data_type_oid));

 {
  RowDecompressor decompressor = {
   .per_compressed_cols = create_per_compressed_column(in_desc,
                out_desc,
                out_table,
                compressed_data_type_oid),
   .num_compressed_columns = in_desc->natts,

   .out_desc = out_desc,
   .out_rel = out_rel,

   .mycid = GetCurrentCommandId(1),
   .bistate = GetBulkInsertState(),


   .decompressed_datums = palloc(sizeof(Datum) * out_desc->natts),
   .decompressed_is_nulls = palloc(sizeof(bool) * out_desc->natts),
  };
  Datum *compressed_datums = palloc(sizeof(*compressed_datums) * in_desc->natts);
  bool *compressed_is_nulls = palloc(sizeof(*compressed_is_nulls) * in_desc->natts);

  HeapTuple compressed_tuple;
  HeapScanDesc heapScan = heap_beginscan(in_rel, GetLatestSnapshot(), 0, (ScanKey) ((void*)0));
  MemoryContext per_compressed_row_ctx =
   AllocSetContextCreate(CurrentMemoryContext,
          "decompress chunk per-compressed row",
          ALLOCSET_DEFAULT_SIZES);

  for (compressed_tuple = heap_getnext(heapScan, ForwardScanDirection);
    compressed_tuple != ((void*)0);
    compressed_tuple = heap_getnext(heapScan, ForwardScanDirection))
  {
   MemoryContext old_ctx;

   Assert(HeapTupleIsValid(compressed_tuple));

   old_ctx = MemoryContextSwitchTo(per_compressed_row_ctx);

   heap_deform_tuple(compressed_tuple, in_desc, compressed_datums, compressed_is_nulls);
   populate_per_compressed_columns_from_data(decompressor.per_compressed_cols,
               in_desc->natts,
               compressed_datums,
               compressed_is_nulls);

   row_decompressor_decompress_row(&decompressor);
   MemoryContextSwitchTo(old_ctx);
   MemoryContextReset(per_compressed_row_ctx);
  }

  heap_endscan(heapScan);
  FreeBulkInsertState(decompressor.bistate);
 }



 reindex_relation(out_table, 0, 0);

 RelationClose(out_rel);
 RelationClose(in_rel);
}
