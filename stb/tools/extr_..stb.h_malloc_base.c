
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int stb_uintptr ;
typedef int stb__nochildren ;
typedef int stb__chunked ;
typedef int stb__alloc_type ;
struct TYPE_9__ {int * child; } ;
typedef TYPE_1__ stb__alloc ;






 int assert (int ) ;
 scalar_t__ malloc (size_t) ;
 void* stb__alloc_chunk (TYPE_1__*,int,int,int) ;
 TYPE_1__* stb__get_context (void*) ;
 int stb__insert_alloc (TYPE_1__*,TYPE_1__*) ;
 int stb__insert_nochild (TYPE_1__*,int *) ;
 int stb__setchunks (TYPE_1__*,int *) ;
 int stb__setparent (int *,TYPE_1__*) ;
 int stb_alloc_count_alloc ;
 int stb_is_pow2 (int) ;
 int stb_lowbit8 (unsigned int) ;

__attribute__((used)) static void * malloc_base(void *context, size_t size, stb__alloc_type t, int align)
{
   void *p;

   stb__alloc *src = stb__get_context(context);

   if (align <= 0) {


      int align_proposed = 1 << stb_lowbit8((unsigned int) size);

      if (align_proposed < 0)
         align_proposed = 4;

      if (align_proposed == 0) {
         if (size == 0)
            align_proposed = 1;
         else
            align_proposed = 256;
      }




      if (align < 0) {
         if (align_proposed > -align)
            align_proposed = -align;
      }

      align = align_proposed;
   }

   assert(stb_is_pow2(align));


   if (t == 128 && align > 8)
      t = 131;

   switch (t) {
      case 131: {
         stb__alloc *s = (stb__alloc *) malloc(size + sizeof(*s));
         if (s == ((void*)0)) return ((void*)0);
         p = s+1;
         s->child = ((void*)0);
         stb__insert_alloc(src, s);

         stb__setchunks(s,((void*)0));
         break;
      }

      case 128: {
         stb__nochildren *s = (stb__nochildren *) malloc(size + sizeof(*s));
         if (s == ((void*)0)) return ((void*)0);
         p = s+1;
         stb__insert_nochild(src, s);
         break;
      }

      case 130: {
         p = stb__alloc_chunk(src, (int) size, align, 0);
         if (p == ((void*)0)) return ((void*)0);
         break;
      }

      case 129: {
         stb__chunked *s;
         if (align < sizeof(stb_uintptr)) align = sizeof(stb_uintptr);
         s = (stb__chunked *) stb__alloc_chunk(src, (int) size, align, sizeof(*s));
         if (s == ((void*)0)) return ((void*)0);
         stb__setparent(s, src);
         p = s+1;
         break;
      }

      default: p = ((void*)0); assert(0);
   }

   ++stb_alloc_count_alloc;
   return p;
}
