
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* end; scalar_t__* spans; } ;
typedef scalar_t__ Rune ;
typedef TYPE_1__ Reclass ;



__attribute__((used)) static int incclass(Reclass *cc, Rune c)
{
 Rune *p;
 for (p = cc->spans; p < cc->end; p += 2)
  if (p[0] <= c && c <= p[1])
   return 1;
 return 0;
}
