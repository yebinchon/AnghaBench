
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int step; int minval; int maxval; int mode; } ;
typedef TYPE_1__ stb_search ;


 int STB_probe_open_largest ;
 int STB_probe_open_smallest ;
 int stb_probe_guess (TYPE_1__*,int*) ;

int stb_search_open(stb_search *s, int minv, int find_smallest)
{
   int r;
   s->step = 4;
   s->minval = minv;
   s->maxval = minv+s->step;
   s->mode = find_smallest ? STB_probe_open_smallest : STB_probe_open_largest;
   stb_probe_guess(s, &r);
   return r;
}
