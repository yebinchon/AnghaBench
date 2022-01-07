
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (char*) ;
 scalar_t__ _isnan (double) ;

double _nextafter( double x, double y )
{
    WARN("This function is not implemented correctly\n");
 if ( x == y)
  return x;

 if ( _isnan(x) || _isnan(y) )
  return x;

 return x;
}
