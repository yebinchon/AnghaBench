
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int missing_ok; int dbname; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ DropdbStmt ;


 scalar_t__ InvalidOid ;
 int LOG ;
 int STOP ;
 int ereport (int ,int ) ;
 int errmsg (char*,scalar_t__) ;
 scalar_t__ get_database_oid (int ,int ) ;
 int ts_bgw_message_send_and_wait (int ,scalar_t__) ;

__attribute__((used)) static void
stop_workers_on_db_drop(DropdbStmt *drop_db_statement)
{





 Oid dropped_db_oid = get_database_oid(drop_db_statement->dbname, drop_db_statement->missing_ok);

 if (dropped_db_oid != InvalidOid)
 {
  ereport(LOG,
    (errmsg("TimescaleDB background worker scheduler for database %u will be stopped",
      dropped_db_oid)));
  ts_bgw_message_send_and_wait(STOP, dropped_db_oid);
 }
 return;
}
