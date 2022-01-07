
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_DEBUG (char*,int ) ;
 int PRINT_WARNING (int ) ;
 int PR_GET_CHILD_SUBREAPER ;
 int errno ;
 int getpid () ;
 scalar_t__ prctl (int ,int*) ;
 int reaper_warning ;
 int strerror (int ) ;

void reaper_check () {





 if (getpid() == 1) {
  return;
 }
 PRINT_WARNING(reaper_warning);
}
