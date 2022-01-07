
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ parsetree; } ;
struct TYPE_14__ {int renameType; int * relation; } ;
typedef TYPE_1__ RenameStmt ;
typedef TYPE_2__ ProcessUtilityArgs ;
typedef int Oid ;
typedef int Cache ;


 int InvalidOid ;
 int NoLock ;






 int OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int) ;
 int process_rename_column (TYPE_2__*,int *,int ,TYPE_1__*) ;
 int process_rename_constraint (TYPE_2__*,int *,int ,TYPE_1__*) ;
 int process_rename_index (TYPE_2__*,int *,int ,TYPE_1__*) ;
 int process_rename_schema (TYPE_1__*) ;
 int process_rename_table (TYPE_2__*,int *,int ,TYPE_1__*) ;
 int process_rename_view (int ,TYPE_1__*) ;
 int ts_cache_release (int *) ;
 int * ts_hypertable_cache_pin () ;

__attribute__((used)) static void
process_rename(ProcessUtilityArgs *args)
{
 RenameStmt *stmt = (RenameStmt *) args->parsetree;
 Oid relid = InvalidOid;
 Cache *hcache;


 if (((void*)0) != stmt->relation)
 {
  relid = RangeVarGetRelid(stmt->relation, NoLock, 1);
  if (!OidIsValid(relid))
   return;
 }
 else
 {



  if (stmt->renameType != 131)
   return;
 }

 hcache = ts_hypertable_cache_pin();

 switch (stmt->renameType)
 {
  case 129:
   process_rename_table(args, hcache, relid, stmt);
   break;
  case 133:
   process_rename_column(args, hcache, relid, stmt);
   break;
  case 132:
   process_rename_index(args, hcache, relid, stmt);
   break;
  case 130:
   process_rename_constraint(args, hcache, relid, stmt);
   break;
  case 128:
   process_rename_view(relid, stmt);
   break;
  case 131:
   process_rename_schema(stmt);
   break;
  default:
   break;
 }

 ts_cache_release(hcache);
}
