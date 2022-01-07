
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hypertable ;
typedef int AlterTableCmd ;


 int alter_hypertable_constraint ;
 int foreach_chunk (int *,int ,int *) ;

__attribute__((used)) static void
process_altertable_alter_constraint_end(Hypertable *ht, AlterTableCmd *cmd)
{
 foreach_chunk(ht, alter_hypertable_constraint, cmd);
}
