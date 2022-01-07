
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__** prevn; } ;
typedef TYPE_1__ stb__nochildren ;
struct TYPE_8__ {TYPE_1__* child; } ;
typedef TYPE_2__ stb__alloc ;


 TYPE_1__*** stb__prevn (TYPE_1__*) ;

__attribute__((used)) static void stb__insert_nochild(stb__alloc *src, stb__nochildren *s)
{
   s->prevn = &src->child;
   s->next = src->child;
   src->child = s+1;
   if (s->next)
      *stb__prevn(s->next) = &s->next;
}
