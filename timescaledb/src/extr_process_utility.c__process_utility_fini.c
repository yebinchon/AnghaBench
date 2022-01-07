
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ProcessUtility_hook ;
 int UnregisterSubXactCallback (int ,int *) ;
 int UnregisterXactCallback (int ,int *) ;
 int prev_ProcessUtility_hook ;
 int process_utility_subxact_abort ;
 int process_utility_xact_abort ;

void
_process_utility_fini(void)
{
 ProcessUtility_hook = prev_ProcessUtility_hook;
 UnregisterXactCallback(process_utility_xact_abort, ((void*)0));
 UnregisterSubXactCallback(process_utility_subxact_abort, ((void*)0));
}
