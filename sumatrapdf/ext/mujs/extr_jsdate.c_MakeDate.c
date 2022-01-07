
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double msPerDay ;

__attribute__((used)) static double MakeDate(double day, double time)
{
 return day * msPerDay + time;
}
