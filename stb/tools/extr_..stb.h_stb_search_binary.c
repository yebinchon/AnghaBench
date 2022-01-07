
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int minval; int maxval; int mode; } ;
typedef TYPE_1__ stb_search ;


 int STB_probe_binary_largest ;
 int STB_probe_binary_smallest ;
 int stb_probe_guess (TYPE_1__*,int*) ;

int stb_search_binary(stb_search *s, int minv, int maxv, int find_smallest)
{
   int r;
   if (maxv < minv) return minv-1;
   s->minval = minv;
   s->maxval = maxv;
   s->mode = find_smallest ? STB_probe_binary_smallest : STB_probe_binary_largest;
   stb_probe_guess(s, &r);
   return r;
}
