
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tablespacename; } ;
struct TYPE_4__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ DropTableSpaceStmt ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int) ;
 int ts_tablespace_count_attached (int ) ;

__attribute__((used)) static void
process_drop_tablespace(ProcessUtilityArgs *args)
{
 DropTableSpaceStmt *stmt = (DropTableSpaceStmt *) args->parsetree;
 int count = ts_tablespace_count_attached(stmt->tablespacename);

 if (count > 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("tablespace \"%s\" is still attached to %d hypertables",
      stmt->tablespacename,
      count),
     errhint("Detach the tablespace from all hypertables before removing it.")));
}
