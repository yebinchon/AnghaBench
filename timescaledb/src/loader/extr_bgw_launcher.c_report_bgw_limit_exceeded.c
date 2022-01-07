
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state_transition_failures; } ;
typedef TYPE_1__ DbHashEntry ;


 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int LOG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int ts_guc_max_background_workers ;

__attribute__((used)) static void
report_bgw_limit_exceeded(DbHashEntry *entry)
{
 if (entry->state_transition_failures == 0)
  ereport(LOG,
    (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
     errmsg("TimescaleDB background worker limit of %d exceeded",
      ts_guc_max_background_workers),
     errhint("Consider increasing timescaledb.max_background_workers.")));
 entry->state_transition_failures++;
}
