
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int float8 ;


 int ldexp (double,int) ;
 int pg_lrand48 () ;

__attribute__((used)) static float8
calculate_jitter_percent()
{






 uint8 percent = pg_lrand48();
 return ldexp((double) (16 - (int) (percent % 32)), -7);
}
