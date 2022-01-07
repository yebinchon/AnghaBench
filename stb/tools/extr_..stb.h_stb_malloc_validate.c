
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** prevn; void* next; } ;
typedef TYPE_1__ stb__nochildren ;
struct TYPE_4__ {void** prevn; void* next; void* child; } ;
typedef TYPE_2__ stb__alloc ;





 int assert (int) ;
 int stb__identify (void*) ;
 void*** stb__prevn (void*) ;

void stb_malloc_validate(void *p, void *parent)
{
   if (p == ((void*)0)) return;

   switch(stb__identify(p)) {
      case 129:
         return;
      case 128: {
         stb__nochildren *n = (stb__nochildren *) p - 1;
         if (n->prevn)
            assert(*n->prevn == p);
         if (n->next) {
            assert(*stb__prevn(n->next) == &n->next);
            stb_malloc_validate(n, parent);
         }
         return;
      }
      case 130: {
         stb__alloc *s = (stb__alloc *) p - 1;

         if (s->prevn)
            assert(*s->prevn == p);

         if (s->child) {
            assert(*stb__prevn(s->child) == &s->child);
            stb_malloc_validate(s->child, p);
         }

         if (s->next) {
            assert(*stb__prevn(s->next) == &s->next);
            stb_malloc_validate(s->next, parent);
         }
         return;
      }
      default:
         assert(0);
   }
}
