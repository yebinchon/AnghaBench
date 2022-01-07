
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signal (int,int ) ;
 int sigterm_cnt ;
 int termination_signal_handler ;
 scalar_t__ write (int,char*,int) ;

void sig_term_handler (int signum __attribute__ ((unused))) {
  signal (signum, termination_signal_handler);

  if (write (1, "SIGTERM/SIGINT received\n", 25) < 0) {

  }



  sigterm_cnt ++;
}
