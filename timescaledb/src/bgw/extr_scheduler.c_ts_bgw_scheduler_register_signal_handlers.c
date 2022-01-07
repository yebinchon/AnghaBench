
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGC_SIGHUP ;
 int ProcessConfigFile (int ) ;
 int SIGHUP ;
 int SIGTERM ;
 int got_SIGHUP ;
 int handle_sighup ;
 int handle_sigterm ;
 int pqsignal (int ,int ) ;

void
ts_bgw_scheduler_register_signal_handlers(void)
{




 pqsignal(SIGTERM, handle_sigterm);
 pqsignal(SIGHUP, handle_sighup);


 got_SIGHUP = 0;
 ProcessConfigFile(PGC_SIGHUP);
}
