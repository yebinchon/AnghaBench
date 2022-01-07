
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int main_table_relid; } ;
typedef int Oid ;
typedef TYPE_1__ Hypertable ;


 int Assert (int ) ;
 int foreach_chunk (TYPE_1__*,int ,int *) ;
 int get_relation_constraint_oid (int ,char const*,int) ;
 int process_add_constraint_chunk ;

__attribute__((used)) static void
process_altertable_add_constraint(Hypertable *ht, const char *constraint_name)
{
 Oid hypertable_constraint_oid =
  get_relation_constraint_oid(ht->main_table_relid, constraint_name, 0);

 Assert(constraint_name != ((void*)0));

 foreach_chunk(ht, process_add_constraint_chunk, &hypertable_constraint_oid);
}
