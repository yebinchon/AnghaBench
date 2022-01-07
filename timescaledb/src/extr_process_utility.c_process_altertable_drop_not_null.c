
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int name; } ;
struct TYPE_10__ {int column_name; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {TYPE_1__* space; } ;
struct TYPE_9__ {int num_dimensions; TYPE_4__* dimensions; } ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ Dimension ;
typedef TYPE_5__ AlterTableCmd ;


 int ERRCODE_TS_OPERATION_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IS_OPEN_DIMENSION (TYPE_4__*) ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static void
process_altertable_drop_not_null(Hypertable *ht, AlterTableCmd *cmd)
{
 int i;

 for (i = 0; i < ht->space->num_dimensions; i++)
 {
  Dimension *dim = &ht->space->dimensions[i];

  if (IS_OPEN_DIMENSION(dim) &&
   strncmp(NameStr(dim->fd.column_name), cmd->name, NAMEDATALEN) == 0)
   ereport(ERROR,
     (errcode(ERRCODE_TS_OPERATION_NOT_SUPPORTED),
      errmsg("cannot drop not-null constraint from a time-partitioned column")));
 }
}
