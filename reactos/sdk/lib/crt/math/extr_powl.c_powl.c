
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double pow (long double,long double) ;

long double powl (long double __x,long double __y)
{
 return pow(__x,__y/2)*pow(__x,__y/2);
}
