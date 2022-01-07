
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VacuumRelation ;
struct TYPE_15__ {int chunk_rels; TYPE_2__* ht_vacuum_rel; } ;
typedef TYPE_4__ VacuumCtx ;
struct TYPE_12__ {int schema_name; int table_name; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_17__ {TYPE_3__* space; } ;
struct TYPE_16__ {void* schemaname; void* relname; } ;
struct TYPE_14__ {int num_dimensions; } ;
struct TYPE_13__ {int va_cols; int relation; } ;
typedef TYPE_5__ RangeVar ;
typedef int Oid ;
typedef TYPE_6__ Hypertable ;
typedef TYPE_7__ Chunk ;


 void* NameStr (int ) ;
 TYPE_5__* copyObject (int ) ;
 int lappend (int ,int *) ;
 int * makeVacuumRelation (TYPE_5__*,int ,int ) ;
 TYPE_7__* ts_chunk_get_by_relid (int ,int ,int) ;

__attribute__((used)) static void
add_chunk_to_vacuum(Hypertable *ht, Oid chunk_relid, void *arg)
{
 VacuumCtx *ctx = (VacuumCtx *) arg;
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);
 VacuumRelation *chunk_vacuum_rel;
 RangeVar *chunk_range_var = copyObject(ctx->ht_vacuum_rel->relation);

 chunk_range_var->relname = NameStr(chunk->fd.table_name);
 chunk_range_var->schemaname = NameStr(chunk->fd.schema_name);
 chunk_vacuum_rel =
  makeVacuumRelation(chunk_range_var, chunk_relid, ctx->ht_vacuum_rel->va_cols);

 ctx->chunk_rels = lappend(ctx->chunk_rels, chunk_vacuum_rel);
}
