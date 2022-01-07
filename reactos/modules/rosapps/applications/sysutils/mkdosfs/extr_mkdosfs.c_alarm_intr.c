
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 scalar_t__ blocks ;
 scalar_t__ currently_testing ;
 int fflush (int ) ;
 int printf (char*,scalar_t__) ;
 int signal (int ,void (*) (int)) ;
 int stdout ;

__attribute__((used)) static void
alarm_intr (int alnum)
{
  if (currently_testing >= blocks)
    return;

  signal (SIGALRM, alarm_intr);
  alarm (5);
  if (!currently_testing)
    return;

  printf ("%d... ", currently_testing);
  fflush (stdout);
}
