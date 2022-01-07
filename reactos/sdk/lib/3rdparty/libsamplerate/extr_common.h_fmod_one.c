
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double lrint (double) ;

__attribute__((used)) static inline double
fmod_one (double x)
{ double res ;

 res = x - lrint (x) ;
 if (res < 0.0)
  return res + 1.0 ;

 return res ;
}
