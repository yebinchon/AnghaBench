
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_left; struct TYPE_4__* next; } ;
typedef TYPE_1__ stb__chunk ;
typedef int stb__alloc ;


 TYPE_1__* stb__chunks (int *) ;
 int stb__setchunks (int *,TYPE_1__*) ;

__attribute__((used)) static void stb__sort_chunks(stb__alloc *src)
{

   stb__chunk *c = stb__chunks(src), *d;
   if (c == ((void*)0)) return;
   d = c->next;
   if (d == ((void*)0)) return;
   if (c->data_left > d->data_left) return;

   c->next = d->next;
   d->next = c;
   stb__setchunks(src, d);
}
