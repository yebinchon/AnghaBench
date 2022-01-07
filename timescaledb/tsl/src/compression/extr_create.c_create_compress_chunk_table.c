
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int data; } ;
struct TYPE_18__ {int id; int hypertable_id; TYPE_1__ table_name; int schema_name; } ;
struct TYPE_21__ {int table_id; TYPE_3__ fd; int hypertable_relid; int constraints; int cube; } ;
struct TYPE_20__ {int hypertable_id; int num_dimensions; } ;
struct TYPE_17__ {int associated_table_prefix; } ;
struct TYPE_19__ {TYPE_2__ fd; int main_table_relid; TYPE_5__* space; } ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ Hyperspace ;
typedef TYPE_6__ Chunk ;
typedef int CatalogSecurityContext ;
typedef int Catalog ;


 int CHUNK ;
 int CurrentMemoryContext ;
 int ERROR ;
 int INTERNAL_SCHEMA_NAME ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 int OidIsValid (int ) ;
 int RowExclusiveLock ;
 int elog (int ,char*) ;
 int get_rel_tablespace (int ) ;
 int get_tablespace_name (int ) ;
 int namestrcpy (int *,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int * ts_catalog_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_table_next_seq_id (int *,int ) ;
 int ts_chunk_constraints_add_inheritable_constraints (int ,int,int ) ;
 int ts_chunk_constraints_alloc (int,int ) ;
 int ts_chunk_constraints_create (int ,int ,int,int ,int ) ;
 TYPE_6__* ts_chunk_create_stub (int ,int ) ;
 int ts_chunk_create_table (TYPE_6__*,TYPE_4__*,int ) ;
 int ts_chunk_index_create_all (int ,int ,int,int ) ;
 int ts_chunk_insert_lock (TYPE_6__*,int ) ;
 int ts_trigger_create_all_on_chunk (TYPE_4__*,TYPE_6__*) ;

Chunk *
create_compress_chunk_table(Hypertable *compress_ht, Chunk *src_chunk)
{
 Hyperspace *hs = compress_ht->space;
 Catalog *catalog = ts_catalog_get();
 CatalogSecurityContext sec_ctx;
 Chunk *compress_chunk;


 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 compress_chunk =
  ts_chunk_create_stub(ts_catalog_table_next_seq_id(catalog, CHUNK), hs->num_dimensions);
 ts_catalog_restore_user(&sec_ctx);

 compress_chunk->fd.hypertable_id = hs->hypertable_id;
 compress_chunk->cube = src_chunk->cube;
 compress_chunk->hypertable_relid = compress_ht->main_table_relid;
 compress_chunk->constraints = ts_chunk_constraints_alloc(1, CurrentMemoryContext);
 namestrcpy(&compress_chunk->fd.schema_name, INTERNAL_SCHEMA_NAME);
 snprintf(compress_chunk->fd.table_name.data,
    NAMEDATALEN,
    "compress%s_%d_chunk",
    NameStr(compress_ht->fd.associated_table_prefix),
    compress_chunk->fd.id);

 ;


 ts_chunk_insert_lock(compress_chunk, RowExclusiveLock);


 ts_chunk_constraints_add_inheritable_constraints(compress_chunk->constraints,
              compress_chunk->fd.id,
              compress_chunk->hypertable_relid);






 compress_chunk->table_id =
  ts_chunk_create_table(compress_chunk,
         compress_ht,
         get_tablespace_name(get_rel_tablespace(src_chunk->table_id)));

 if (!OidIsValid(compress_chunk->table_id))
  elog(ERROR, "could not create compress chunk table");


 ts_chunk_constraints_create(compress_chunk->constraints,
        compress_chunk->table_id,
        compress_chunk->fd.id,
        compress_chunk->hypertable_relid,
        compress_chunk->fd.hypertable_id);

 ts_trigger_create_all_on_chunk(compress_ht, compress_chunk);

 ts_chunk_index_create_all(compress_chunk->fd.hypertable_id,
         compress_chunk->hypertable_relid,
         compress_chunk->fd.id,
         compress_chunk->table_id);

 return compress_chunk;
}
