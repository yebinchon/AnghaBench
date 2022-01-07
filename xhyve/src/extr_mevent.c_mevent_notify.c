
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* mevent_pipefd ;
 scalar_t__ mevent_tid ;
 scalar_t__ pthread_self () ;
 int write (scalar_t__,char*,int) ;

__attribute__((used)) static void
mevent_notify(void)
{
 char c;





 if (mevent_pipefd[1] != 0 && pthread_self() != mevent_tid) {
  write(mevent_pipefd[1], &c, 1);
 }
}
