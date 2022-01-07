
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int name; scalar_t__ def; } ;
struct TYPE_13__ {int typeName; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_12__ {TYPE_1__ fd; } ;
struct TYPE_11__ {int space; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef TYPE_3__ Dimension ;
typedef TYPE_4__ ColumnDef ;
typedef TYPE_5__ AlterTableCmd ;


 int DIMENSION_TYPE_ANY ;
 int TypenameGetTypid (int ) ;
 int ts_chunk_recreate_all_constraints_for_dimension (int ,int ) ;
 int ts_dimension_set_type (TYPE_3__*,int ) ;
 TYPE_3__* ts_hyperspace_get_dimension_by_name (int ,int ,int ) ;
 int ts_process_utility_set_expect_chunk_modification (int) ;
 int typename_get_unqual_name (int ) ;

__attribute__((used)) static void
process_alter_column_type_end(Hypertable *ht, AlterTableCmd *cmd)
{
 ColumnDef *coldef = (ColumnDef *) cmd->def;
 Oid new_type = TypenameGetTypid(typename_get_unqual_name(coldef->typeName));
 Dimension *dim = ts_hyperspace_get_dimension_by_name(ht->space, DIMENSION_TYPE_ANY, cmd->name);

 if (((void*)0) == dim)
  return;

 ts_dimension_set_type(dim, new_type);
 ts_process_utility_set_expect_chunk_modification(1);
 ts_chunk_recreate_all_constraints_for_dimension(ht->space, dim->fd.id);
 ts_process_utility_set_expect_chunk_modification(0);
}
