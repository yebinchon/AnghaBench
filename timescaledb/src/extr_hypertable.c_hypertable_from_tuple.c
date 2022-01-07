
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_7__ {int num_dimensions; int id; int table_name; int schema_name; } ;
struct TYPE_6__ {TYPE_3__ fd; int chunk_sizing_func; int space; int chunk_cache; int main_table_relid; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ Hypertable ;
typedef int HeapTuple ;


 TYPE_1__* MemoryContextAllocZero (int ,int) ;
 int NameStr (int ) ;
 int get_chunk_sizing_func_oid (TYPE_3__*) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int hypertable_formdata_fill (TYPE_3__*,int ,int ) ;
 int ts_dimension_scan (int ,int ,int ,int ) ;
 int ts_guc_max_cached_chunks_per_hypertable ;
 int ts_subspace_store_init (int ,int ,int ) ;

__attribute__((used)) static Hypertable *
hypertable_from_tuple(HeapTuple tuple, MemoryContext mctx, TupleDesc desc)
{
 Oid namespace_oid;
 Hypertable *h = MemoryContextAllocZero(mctx, sizeof(Hypertable));
 hypertable_formdata_fill(&h->fd, tuple, desc);

 namespace_oid = get_namespace_oid(NameStr(h->fd.schema_name), 0);
 h->main_table_relid = get_relname_relid(NameStr(h->fd.table_name), namespace_oid);
 h->space = ts_dimension_scan(h->fd.id, h->main_table_relid, h->fd.num_dimensions, mctx);
 h->chunk_cache =
  ts_subspace_store_init(h->space, mctx, ts_guc_max_cached_chunks_per_hypertable);
 h->chunk_sizing_func = get_chunk_sizing_func_oid(&h->fd);

 return h;
}
