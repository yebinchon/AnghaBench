
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uval ;
struct TYPE_3__ {int length; scalar_t__* input; scalar_t__ dont_care; } ;
typedef TYPE_1__ table ;



int strip_table(table *t, int exceptions)
{
   uval terminal_value;
   int p = t->length-1;
   while (t->input[p] == t->dont_care)
      --p;
   terminal_value = t->input[p];

   while (p >= 0x10000) {
      if (t->input[p] != terminal_value && t->input[p] != t->dont_care) {
         if (exceptions)
            --exceptions;
         else
            break;
      }
      --p;
   }
   return p+1;
}
