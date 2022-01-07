
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; scalar_t__ guess; scalar_t__ minval; scalar_t__ maxval; scalar_t__ step; } ;
typedef TYPE_1__ stb_search ;






 int stb_probe_guess (TYPE_1__*,int*) ;

int stb_probe(stb_search *s, int compare, int *result)
{
   switch(s->mode) {
      case 128:
      case 129: {
         if (compare <= 0) {

            if (s->mode == 128)
               s->mode = 130;
            else
               s->mode = 131;
         } else {

            s->minval = s->maxval + 1;
            s->maxval = s->minval + s->step;
            s->step += s->step;
         }
         break;
      }
      case 130: {



         if (compare <= 0)
            s->maxval = s->guess;
         else
            s->minval = s->guess+1;
         break;
      }
      case 131: {



         if (compare < 0)
            s->maxval = s->guess-1;
         else
            s->minval = s->guess;
         break;
      }
   }
   return stb_probe_guess(s, result);
}
