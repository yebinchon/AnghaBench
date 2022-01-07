
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 scalar_t__ cause_abort ;
 int force_abort ;

void
update_force_abort()
{
    if (cause_abort)
 force_abort = TRUE;
}
