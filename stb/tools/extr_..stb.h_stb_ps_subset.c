
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_ps ;


 void** stb_ps_fastlist (int *,int*) ;
 scalar_t__ stb_ps_fastlist_valid (void*) ;
 int stb_ps_find (int *,void*) ;

int stb_ps_subset(stb_ps *bigger, stb_ps *smaller)
{
   int i, listlen;
   void **list = stb_ps_fastlist(smaller, &listlen);
   for(i=0; i < listlen; ++i)
      if (stb_ps_fastlist_valid(list[i]))
         if (!stb_ps_find(bigger, list[i]))
            return 0;
   return 1;
}
