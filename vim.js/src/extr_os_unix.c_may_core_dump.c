
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 scalar_t__ deadly_signal ;
 int getpid () ;
 int kill (int ,scalar_t__) ;
 int signal (scalar_t__,int ) ;

__attribute__((used)) static void
may_core_dump()
{
    if (deadly_signal != 0)
    {
 signal(deadly_signal, SIG_DFL);
 kill(getpid(), deadly_signal);
    }
}
