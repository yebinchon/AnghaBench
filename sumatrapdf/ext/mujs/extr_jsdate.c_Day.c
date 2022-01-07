
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int floor (double) ;
 double msPerDay ;

__attribute__((used)) static int Day(double t)
{
 return floor(t / msPerDay);
}
