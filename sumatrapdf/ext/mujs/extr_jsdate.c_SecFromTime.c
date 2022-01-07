
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SecondsPerMinute ;
 int floor (double) ;
 double msPerSecond ;
 int pmod (int ,int ) ;

__attribute__((used)) static int SecFromTime(double t)
{
 return pmod(floor(t / msPerSecond), SecondsPerMinute);
}
