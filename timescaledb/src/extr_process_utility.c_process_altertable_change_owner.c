
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int newowner; } ;
struct TYPE_11__ {int compressed_hypertable_id; } ;
struct TYPE_12__ {int main_table_relid; TYPE_1__ fd; } ;
typedef TYPE_2__ Hypertable ;
typedef TYPE_3__ AlterTableCmd ;


 int AlterTableInternal (int ,int ,int) ;
 int Assert (int ) ;
 int IsA (int ,int ) ;
 int RoleSpec ;
 scalar_t__ TS_HYPERTABLE_HAS_COMPRESSION (TYPE_2__*) ;
 int foreach_chunk (TYPE_2__*,int ,TYPE_3__*) ;
 int list_make1 (TYPE_3__*) ;
 int process_altertable_change_owner_chunk ;
 TYPE_2__* ts_hypertable_get_by_id (int ) ;

__attribute__((used)) static void
process_altertable_change_owner(Hypertable *ht, AlterTableCmd *cmd)
{
 Assert(IsA(cmd->newowner, RoleSpec));

 foreach_chunk(ht, process_altertable_change_owner_chunk, cmd);

 if (TS_HYPERTABLE_HAS_COMPRESSION(ht))
 {
  Hypertable *compressed_hypertable =
   ts_hypertable_get_by_id(ht->fd.compressed_hypertable_id);
  AlterTableInternal(compressed_hypertable->main_table_relid, list_make1(cmd), 0);
  process_altertable_change_owner(compressed_hypertable, cmd);
 }
}
