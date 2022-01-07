
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int die_callback () ;
 int exit (int ) ;

void
sighup_handler(int sig)
{
 if (die_callback)
  die_callback();

 exit(EXIT_SUCCESS);
}
