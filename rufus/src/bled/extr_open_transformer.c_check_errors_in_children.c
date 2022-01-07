
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bb_got_signal ;
 scalar_t__ wait (int*) ;
 scalar_t__ wait_any_nohang (int*) ;

void check_errors_in_children(int signo)
{
 int status;

 if (!signo) {

  if (wait(&status) < 0)

   return;
  goto check_status;
 }


 for (;;) {
  if (wait_any_nohang(&status) < 0)


   return;
 check_status:


  if (status == 0)

   continue;



  bb_got_signal = 1;
 }
}
