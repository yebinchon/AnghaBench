
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int newowner; } ;
typedef int Oid ;
typedef int Hypertable ;
typedef TYPE_1__ AlterTableCmd ;


 int ATExecChangeOwner (int ,int ,int,int ) ;
 int AccessExclusiveLock ;
 int get_rolespec_oid (int ,int) ;

__attribute__((used)) static void
process_altertable_change_owner_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 AlterTableCmd *cmd = arg;
 Oid roleid = get_rolespec_oid(cmd->newowner, 0);

 ATExecChangeOwner(chunk_relid, roleid, 0, AccessExclusiveLock);
}
