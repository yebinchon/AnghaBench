
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefineCustomIntVariable (char*,char*,char*,int *,int ,int ,int,int ,int ,int *,int *,int *) ;
 int PGC_POSTMASTER ;
 int ts_guc_max_background_workers ;

extern void
ts_bgw_counter_setup_gucs(void)
{
 DefineCustomIntVariable("timescaledb.max_background_workers",
       "Maximum background worker processes allocated to TimescaleDB",
       "Max background worker processes allocated to TimescaleDB - set to at "
       "least 1 + number of databases in Postgres instance to use background "
       "workers ",
       &ts_guc_max_background_workers,
       ts_guc_max_background_workers,
       0,
       1000,

       PGC_POSTMASTER,
       0,
       ((void*)0),
       ((void*)0),
       ((void*)0));
}
