
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_ps ;


 scalar_t__ stb_ps_count (int *) ;
 int stb_ps_subset (int *,int *) ;

int stb_ps_eq(stb_ps *p0, stb_ps *p1)
{
   if (stb_ps_count(p0) != stb_ps_count(p1))
      return 0;
   return stb_ps_subset(p0, p1);
}
