
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int floor (int) ;

__attribute__((used)) static int DayFromYear(int y)
{
 return 365 * (y - 1970) +
  floor((y - 1969) / 4.0) -
  floor((y - 1901) / 100.0) +
  floor((y - 1601) / 400.0);
}
