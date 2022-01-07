
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ProcessUtility_hook ;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int prev_ProcessUtility_hook ;
 int process_utility_subxact_abort ;
 int process_utility_xact_abort ;
 int timescaledb_ddl_command_start ;

void
_process_utility_init(void)
{
 prev_ProcessUtility_hook = ProcessUtility_hook;
 ProcessUtility_hook = timescaledb_ddl_command_start;
 RegisterXactCallback(process_utility_xact_abort, ((void*)0));
 RegisterSubXactCallback(process_utility_subxact_abort, ((void*)0));
}
