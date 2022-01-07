
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int data; } ;
struct TYPE_24__ {int id; int hypertable_id; TYPE_1__ table_name; int schema_name; } ;
struct TYPE_28__ {int table_id; TYPE_2__ fd; int hypertable_relid; int constraints; TYPE_5__* cube; } ;
struct TYPE_27__ {int num_slices; int slices; } ;
struct TYPE_26__ {int hypertable_id; int num_dimensions; } ;
struct TYPE_25__ {int main_table_relid; TYPE_4__* space; } ;
typedef int Point ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ Hyperspace ;
typedef TYPE_5__ Hypercube ;
typedef TYPE_6__ Chunk ;
typedef int CatalogSecurityContext ;
typedef int Catalog ;


 int CHUNK ;
 int ERROR ;
 int NAMEDATALEN ;
 int OidIsValid (int ) ;
 int RowExclusiveLock ;
 int calculate_and_set_new_chunk_interval (TYPE_3__*,int *) ;
 int chunk_collision_resolve (TYPE_4__*,TYPE_5__*,int *) ;
 int elog (int ,char*) ;
 int namestrcpy (int *,char const*) ;
 int snprintf (int ,int ,char*,char const*,int) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int * ts_catalog_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_table_next_seq_id (int *,int ) ;
 int ts_chunk_add_constraints (TYPE_6__*) ;
 int ts_chunk_constraints_create (int ,int ,int,int ,int ) ;
 TYPE_6__* ts_chunk_create_stub (int ,int ) ;
 int ts_chunk_create_table (TYPE_6__*,TYPE_3__*,int ) ;
 int ts_chunk_index_create_all (int ,int ,int,int ) ;
 int ts_chunk_insert_lock (TYPE_6__*,int ) ;
 int ts_dimension_slice_insert_multi (int ,int ) ;
 TYPE_5__* ts_hypercube_calculate_from_point (TYPE_4__*,int *) ;
 int ts_hypertable_select_tablespace_name (TYPE_3__*,TYPE_6__*) ;
 int ts_trigger_create_all_on_chunk (TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static Chunk *
chunk_create_after_lock(Hypertable *ht, Point *p, const char *schema, const char *prefix)
{
 Hyperspace *hs = ht->space;
 Catalog *catalog = ts_catalog_get();
 CatalogSecurityContext sec_ctx;
 Hypercube *cube;
 Chunk *chunk;





 calculate_and_set_new_chunk_interval(ht, p);


 cube = ts_hypercube_calculate_from_point(hs, p);


 chunk_collision_resolve(hs, cube, p);


 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 chunk = ts_chunk_create_stub(ts_catalog_table_next_seq_id(catalog, CHUNK), hs->num_dimensions);
 ts_catalog_restore_user(&sec_ctx);

 chunk->fd.hypertable_id = hs->hypertable_id;
 chunk->cube = cube;
 chunk->hypertable_relid = ht->main_table_relid;
 namestrcpy(&chunk->fd.schema_name, schema);
 snprintf(chunk->fd.table_name.data, NAMEDATALEN, "%s_%d_chunk", prefix, chunk->fd.id);


 ts_chunk_insert_lock(chunk, RowExclusiveLock);


 ts_dimension_slice_insert_multi(cube->slices, cube->num_slices);


 ts_chunk_add_constraints(chunk);


 chunk->table_id =
  ts_chunk_create_table(chunk, ht, ts_hypertable_select_tablespace_name(ht, chunk));

 if (!OidIsValid(chunk->table_id))
  elog(ERROR, "could not create chunk table");


 ts_chunk_constraints_create(chunk->constraints,
        chunk->table_id,
        chunk->fd.id,
        chunk->hypertable_relid,
        chunk->fd.hypertable_id);

 ts_trigger_create_all_on_chunk(ht, chunk);

 ts_chunk_index_create_all(chunk->fd.hypertable_id,
         chunk->hypertable_relid,
         chunk->fd.id,
         chunk->table_id);

 return chunk;
}
