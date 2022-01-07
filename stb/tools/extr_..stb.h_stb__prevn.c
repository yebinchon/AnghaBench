
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** prevn; } ;
typedef TYPE_1__ stb__nochildren ;
struct TYPE_4__ {void** prevn; } ;
typedef TYPE_2__ stb__alloc ;


 scalar_t__ STB__alloc ;
 scalar_t__ stb__identify (void*) ;

__attribute__((used)) static void *** stb__prevn(void *p)
{
   if (stb__identify(p) == STB__alloc) {
      stb__alloc *s = (stb__alloc *) p - 1;
      return &s->prevn;
   } else {
      stb__nochildren *s = (stb__nochildren *) p - 1;
      return &s->prevn;
   }
}
