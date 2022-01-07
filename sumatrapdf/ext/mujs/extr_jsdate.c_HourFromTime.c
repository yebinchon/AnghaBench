
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HoursPerDay ;
 int floor (double) ;
 double msPerHour ;
 int pmod (int ,int ) ;

__attribute__((used)) static int HourFromTime(double t)
{
 return pmod(floor(t / msPerHour), HoursPerDay);
}
