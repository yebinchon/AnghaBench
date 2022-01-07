
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DaysInYear (int ) ;
 int YearFromTime (int) ;

__attribute__((used)) static int InLeapYear(int t)
{
 return DaysInYear(YearFromTime(t)) == 366;
}
