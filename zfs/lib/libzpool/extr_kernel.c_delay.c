
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_t ;


 int hz ;
 int poll (int ,int ,int) ;

void
delay(clock_t ticks)
{
 (void) poll(0, 0, ticks * (1000 / hz));
}
