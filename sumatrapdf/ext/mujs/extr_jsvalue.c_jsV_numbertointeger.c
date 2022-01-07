
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double INT_MAX ;
 double INT_MIN ;
 double floor (double) ;
 scalar_t__ isnan (double) ;

int jsV_numbertointeger(double n)
{
 if (n == 0) return 0;
 if (isnan(n)) return 0;
 n = (n < 0) ? -floor(-n) : floor(n);
 if (n < INT_MIN) return INT_MIN;
 if (n > INT_MAX) return INT_MAX;
 return (int)n;
}
