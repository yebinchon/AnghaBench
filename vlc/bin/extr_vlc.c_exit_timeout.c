
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_DFL ;
 int signal (int ,int ) ;

__attribute__((used)) static void exit_timeout (int signum)
{
    (void) signum;
    signal (SIGINT, SIG_DFL);
}
