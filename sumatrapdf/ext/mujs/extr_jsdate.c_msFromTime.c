
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msPerSecond ;
 int pmod (double,int ) ;

__attribute__((used)) static int msFromTime(double t)
{
 return pmod(t, msPerSecond);
}
