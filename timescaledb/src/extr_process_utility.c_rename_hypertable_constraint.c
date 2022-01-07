
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {TYPE_1__* space; } ;
struct TYPE_10__ {int newname; int subname; } ;
struct TYPE_8__ {int num_dimensions; } ;
typedef TYPE_3__ RenameStmt ;
typedef int Oid ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ Chunk ;


 int ts_chunk_constraint_rename_hypertable_constraint (int ,int ,int ) ;
 TYPE_5__* ts_chunk_get_by_relid (int ,int ,int) ;

__attribute__((used)) static void
rename_hypertable_constraint(Hypertable *ht, Oid chunk_relid, void *arg)
{
 RenameStmt *stmt = (RenameStmt *) arg;
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);

 ts_chunk_constraint_rename_hypertable_constraint(chunk->fd.id, stmt->subname, stmt->newname);
}
