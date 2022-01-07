
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HTSU_Result ;


 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERROR ;






 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 int ts_hypertable_lock_tuple (int ) ;

bool
ts_hypertable_lock_tuple_simple(Oid table_relid)
{
 HTSU_Result result = ts_hypertable_lock_tuple(table_relid);

 switch (result)
 {
  case 130:






   return 1;
  case 131:

   return 1;
  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
      errmsg("hypertable \"%s\" has already been updated by another transaction",
       get_rel_name(table_relid)),
      errhint("Retry the operation again")));
  case 133:
   ereport(ERROR,
     (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
      errmsg("hypertable \"%s\" is being updated by another transaction",
       get_rel_name(table_relid)),
      errhint("Retry the operation again")));
  case 128:

   return 0;
  case 132:
   elog(ERROR, "attempted to lock invisible tuple");
   return 0;
  default:
   elog(ERROR, "unexpected tuple lock status");
   return 0;
 }
}
