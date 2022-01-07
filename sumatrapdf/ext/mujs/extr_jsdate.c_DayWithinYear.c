
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Day (double) ;
 int DayFromYear (int ) ;
 int YearFromTime (double) ;

__attribute__((used)) static int DayWithinYear(double t)
{
 return Day(t) - DayFromYear(YearFromTime(t));
}
