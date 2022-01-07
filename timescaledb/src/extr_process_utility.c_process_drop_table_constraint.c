
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int constraint_name; int table; int schema; } ;
typedef int Hypertable ;
typedef TYPE_2__ EventTriggerDropTableConstraint ;
typedef TYPE_3__ EventTriggerDropObject ;
typedef TYPE_4__ Chunk ;
typedef int CatalogSecurityContext ;


 int Assert (int) ;
 scalar_t__ EVENT_TRIGGER_DROP_TABLE_CONSTRAINT ;
 TYPE_4__* chunk_get_by_name (int ,int ,int ,int) ;
 int foreach_chunk (int *,int ,int ) ;
 int process_drop_constraint_on_chunk ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_chunk_constraint_delete_by_constraint_name (int ,int ,int,int) ;
 int * ts_hypertable_get_by_name (int ,int ) ;

__attribute__((used)) static void
process_drop_table_constraint(EventTriggerDropObject *obj)
{
 EventTriggerDropTableConstraint *constraint;
 Hypertable *ht;

 Assert(obj->type == EVENT_TRIGGER_DROP_TABLE_CONSTRAINT);
 constraint = (EventTriggerDropTableConstraint *) obj;


 ht = ts_hypertable_get_by_name(constraint->schema, constraint->table);

 if (ht != ((void*)0))
 {
  CatalogSecurityContext sec_ctx;

  ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);


  foreach_chunk(ht, process_drop_constraint_on_chunk, constraint->constraint_name);

  ts_catalog_restore_user(&sec_ctx);
 }
 else
 {
  Chunk *chunk = chunk_get_by_name(constraint->schema, constraint->table, 0, 0);

  if (((void*)0) != chunk)
  {
   ts_chunk_constraint_delete_by_constraint_name(chunk->fd.id,
                constraint->constraint_name,
                1,
                0);
  }
 }
}
