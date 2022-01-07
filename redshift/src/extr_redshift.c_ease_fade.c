
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (double) ;

__attribute__((used)) static double
ease_fade(double t)
{
 if (t <= 0) return 0;
 if (t >= 1) return 1;
 return 1.0042954579734844 * exp(
  -6.4041738958415664 * exp(-7.2908241330981340 * t));
}
