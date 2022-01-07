
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state_transition_failures; } ;
typedef TYPE_1__ DbHashEntry ;


 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int LOG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
report_error_on_worker_register_failure(DbHashEntry *entry)
{
 if (entry->state_transition_failures == 0)
  ereport(LOG,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("no available background worker slots"),
     errhint("Consider increasing max_worker_processes in tandem with "
       "timescaledb.max_background_workers.")));
 entry->state_transition_failures++;
}
