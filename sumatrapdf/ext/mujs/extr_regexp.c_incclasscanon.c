
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* end; scalar_t__* spans; } ;
typedef scalar_t__ Rune ;
typedef TYPE_1__ Reclass ;


 scalar_t__ canon (scalar_t__) ;

__attribute__((used)) static int incclasscanon(Reclass *cc, Rune c)
{
 Rune *p, r;
 for (p = cc->spans; p < cc->end; p += 2)
  for (r = p[0]; r <= p[1]; ++r)
   if (c == canon(r))
    return 1;
 return 0;
}
