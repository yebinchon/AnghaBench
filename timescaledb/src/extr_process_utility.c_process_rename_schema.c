
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newname; int subname; } ;
typedef TYPE_1__ RenameStmt ;


 int ERRCODE_TS_OPERATION_NOT_SUPPORTED ;
 int ERROR ;
 int NAMEDATALEN ;
 int NUM_TIMESCALEDB_SCHEMAS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int * timescaledb_schema_names ;
 int ts_chunks_rename_schema_name (int ,int ) ;
 int ts_continuous_agg_rename_schema_name (int ,int ) ;
 int ts_dimensions_rename_schema_name (int ,int ) ;
 int ts_hypertables_rename_schema_name (int ,int ) ;

__attribute__((used)) static void
process_rename_schema(RenameStmt *stmt)
{
 int i = 0;


 for (i = 0; i < NUM_TIMESCALEDB_SCHEMAS; i++)
 {
  if (strncmp(stmt->subname, timescaledb_schema_names[i], NAMEDATALEN) == 0)
  {
   ereport(ERROR,
     (errcode(ERRCODE_TS_OPERATION_NOT_SUPPORTED),
      errmsg("cannot rename schemas used by the TimescaleDB extension")));
   return;
  }
 }

 ts_chunks_rename_schema_name(stmt->subname, stmt->newname);
 ts_dimensions_rename_schema_name(stmt->subname, stmt->newname);
 ts_hypertables_rename_schema_name(stmt->subname, stmt->newname);
 ts_continuous_agg_rename_schema_name(stmt->subname, stmt->newname);
}
