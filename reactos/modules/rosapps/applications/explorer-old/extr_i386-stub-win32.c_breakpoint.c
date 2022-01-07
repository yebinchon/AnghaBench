
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAKPOINT () ;
 scalar_t__ initialized ;

void
breakpoint (void)
{
  if (initialized)
 BREAKPOINT ();
}
