
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_ADMIN_SHUTDOWN ;
 int FATAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int on_exit_reset () ;

__attribute__((used)) static inline void
bgw_scheduler_on_postmaster_death(void)
{





 on_exit_reset();
 ereport(FATAL,
   (errcode(ERRCODE_ADMIN_SHUTDOWN),
    errmsg("postmaster exited while TimescaleDB scheduler was working")));
}
