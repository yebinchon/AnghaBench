
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int minval; int maxval; int guess; } ;
typedef TYPE_1__ stb_search ;






 int assert (int) ;

__attribute__((used)) static int stb_probe_guess(stb_search *s, int *result)
{
   switch(s->mode) {
      case 131:
         if (s->minval == s->maxval) {
            *result = s->minval;
            return 0;
         }
         assert(s->minval < s->maxval);

         s->guess = s->minval + (((unsigned) s->maxval - s->minval + 1) >> 1);
         break;

      case 130:
         if (s->minval == s->maxval) {
            *result = s->minval;
            return 0;
         }
         assert(s->minval < s->maxval);

         s->guess = s->minval + (((unsigned) s->maxval - s->minval) >> 1);
         break;
      case 128:
      case 129:
         s->guess = s->maxval;
         break;
   }
   *result = s->guess;
   return 1;
}
