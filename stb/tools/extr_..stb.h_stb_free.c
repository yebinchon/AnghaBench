
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* child; struct TYPE_9__* next; struct TYPE_9__** prevn; int alloc; } ;
typedef TYPE_1__ stb__nochildren ;
typedef TYPE_1__ stb__chunk ;
typedef TYPE_1__ stb__alloc ;





 int assert (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ stb__chunks (TYPE_1__*) ;
 int stb__identify (void*) ;
 TYPE_1__*** stb__prevn (TYPE_1__*) ;
 int stb__setchunks (TYPE_1__*,int *) ;
 scalar_t__ stb_alloc_count_free ;

void stb_free(void *p)
{
   if (p == ((void*)0)) return;


   ++stb_alloc_count_free;

   switch(stb__identify(p)) {
      case 129:




         return;
      case 128: {
         stb__nochildren *s = (stb__nochildren *) p - 1;

         *(s->prevn) = s->next;
         if (s->next)
            *stb__prevn(s->next) = s->prevn;
         free(s);
         return;
      }
      case 130: {
         stb__alloc *s = (stb__alloc *) p - 1;
         stb__chunk *c, *n;
         void *q;


         *(s->prevn) = s->next;
         if (s->next)
            *stb__prevn(s->next) = s->prevn;


         c = (stb__chunk *) stb__chunks(s);
         while (c != ((void*)0)) {
            n = c->next;
            stb_alloc_count_free += c->alloc;
            free(c);
            c = n;
         }


         stb__setchunks(s,((void*)0));
         s->prevn = ((void*)0);
         s->next = ((void*)0);


         while ((q = s->child) != ((void*)0)) {
            stb_free(q);
         }


         free(s);
         return;
      }
      default:
         assert(0);
   }
}
