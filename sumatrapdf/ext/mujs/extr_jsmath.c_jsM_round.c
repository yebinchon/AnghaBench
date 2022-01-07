
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double floor (double) ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;

__attribute__((used)) static double jsM_round(double x)
{
 if (isnan(x)) return x;
 if (isinf(x)) return x;
 if (x == 0) return x;
 if (x > 0 && x < 0.5) return 0;
 if (x < 0 && x >= -0.5) return -0;
 return floor(x + 0.5);
}
