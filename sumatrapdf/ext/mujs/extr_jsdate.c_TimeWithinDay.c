
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msPerDay ;
 double pmod (double,int ) ;

__attribute__((used)) static double TimeWithinDay(double t)
{
 return pmod(t, msPerDay);
}
