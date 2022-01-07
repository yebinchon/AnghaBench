
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int getpid () ;
 int killpg (int ,int ) ;
 scalar_t__ signal (int ,int ) ;

void
hangup_children(void)
{
 if (signal(SIGHUP, SIG_IGN) == SIG_ERR)
  return;
 killpg(getpid(), SIGHUP);
}
