
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Hypertable ;
typedef int AlterTableCmd ;


 int AlterTableInternal (int ,int ,int) ;
 int list_make1 (int *) ;

__attribute__((used)) static void
process_altertable_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 AlterTableCmd *cmd = arg;

 AlterTableInternal(chunk_relid, list_make1(cmd), 0);
}
