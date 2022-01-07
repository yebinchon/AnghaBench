
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t InLeapYear (double) ;
 double NAN ;
 double TimeFromYear (double) ;
 double floor (double) ;
 double msPerDay ;
 double pmod (double,int) ;

__attribute__((used)) static double MakeDay(double y, double m, double date)
{




 static const double firstDayOfMonth[2][12] = {
  {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334},
  {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335}
 };

 double yd, md;
 int im;

 y += floor(m / 12);
 m = pmod(m, 12);

 im = (int)m;
 if (im < 0 || im >= 12)
  return NAN;

 yd = floor(TimeFromYear(y) / msPerDay);
 md = firstDayOfMonth[InLeapYear(y)][im];

 return yd + md + date - 1;
}
