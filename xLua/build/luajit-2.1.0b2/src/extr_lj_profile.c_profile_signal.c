
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (int) ;
 int profile_state ;
 int profile_trigger (int *) ;

__attribute__((used)) static void profile_signal(int sig)
{
  UNUSED(sig);
  profile_trigger(&profile_state);
}
