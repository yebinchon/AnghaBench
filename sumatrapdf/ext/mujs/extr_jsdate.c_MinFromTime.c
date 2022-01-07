
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MinutesPerHour ;
 int floor (double) ;
 double msPerMinute ;
 int pmod (int ,int ) ;

__attribute__((used)) static int MinFromTime(double t)
{
 return pmod(floor(t / msPerMinute), MinutesPerHour);
}
