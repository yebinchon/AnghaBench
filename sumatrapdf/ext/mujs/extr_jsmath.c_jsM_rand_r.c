
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jsM_rand_temper (unsigned int) ;

__attribute__((used)) static int jsM_rand_r(unsigned int *seed)
{
 return jsM_rand_temper(*seed = *seed * 1103515245 + 12345)/2;
}
