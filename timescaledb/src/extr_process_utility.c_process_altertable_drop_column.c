
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int name; } ;
struct TYPE_9__ {int column_name; } ;
struct TYPE_11__ {TYPE_2__ fd; } ;
struct TYPE_10__ {TYPE_1__* space; } ;
struct TYPE_8__ {int num_dimensions; TYPE_4__* dimensions; } ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ Dimension ;
typedef TYPE_5__ AlterTableCmd ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 scalar_t__ namestrcmp (int *,int ) ;

__attribute__((used)) static void
process_altertable_drop_column(Hypertable *ht, AlterTableCmd *cmd)
{
 int i;

 for (i = 0; i < ht->space->num_dimensions; i++)
 {
  Dimension *dim = &ht->space->dimensions[i];

  if (namestrcmp(&dim->fd.column_name, cmd->name) == 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot drop column named in partition key"),
      errdetail("cannot drop column that is a hypertable partitioning (space or "
          "time) dimension")));
 }
}
