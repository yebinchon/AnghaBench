
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TruncateStmt ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
typedef int ProcessUtilityArgs ;
typedef TYPE_2__ Hypertable ;


 int foreach_chunk (TYPE_2__*,int ,int *) ;
 int process_add_hypertable (int *,TYPE_2__*) ;
 int process_truncate_chunk ;
 int ts_chunk_delete_by_hypertable_id (int ) ;

__attribute__((used)) static void
handle_truncate_hypertable(ProcessUtilityArgs *args, TruncateStmt *stmt, Hypertable *ht)
{
 process_add_hypertable(args, ht);


 ts_chunk_delete_by_hypertable_id(ht->fd.id);


 foreach_chunk(ht, process_truncate_chunk, stmt);
}
