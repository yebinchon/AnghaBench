
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DaylightSavingTA (double) ;
 double LocalTZA () ;

__attribute__((used)) static double LocalTime(double utc)
{
 return utc + LocalTZA() + DaylightSavingTA(utc);
}
