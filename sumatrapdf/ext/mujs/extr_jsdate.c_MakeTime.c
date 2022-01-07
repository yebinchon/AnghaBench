
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MinutesPerHour ;
 double SecondsPerMinute ;
 double msPerSecond ;

__attribute__((used)) static double MakeTime(double hour, double min, double sec, double ms)
{
 return ((hour * MinutesPerHour + min) * SecondsPerMinute + sec) * msPerSecond + ms;
}
