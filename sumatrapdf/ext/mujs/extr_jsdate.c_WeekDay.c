
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Day (double) ;
 int pmod (scalar_t__,int) ;

__attribute__((used)) static int WeekDay(double t)
{
 return pmod(Day(t) + 4, 7);
}
