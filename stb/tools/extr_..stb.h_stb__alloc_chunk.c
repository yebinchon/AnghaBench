
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alloc; int data_left; struct TYPE_6__* next; } ;
typedef TYPE_1__ stb__chunk ;
typedef int stb__alloc ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 TYPE_1__* stb__chunks (int *) ;
 int stb__setchunks (int *,TYPE_1__*) ;
 int stb__sort_chunks (int *) ;
 void* stb__try_chunk (TYPE_1__*,int,int,int) ;
 int stb_alloc_chunk_size ;

__attribute__((used)) static void * stb__alloc_chunk(stb__alloc *src, int size, int align, int pre_align)
{
   void *p;
   stb__chunk *c = stb__chunks(src);

   if (c && size <= stb_alloc_chunk_size) {

      p = stb__try_chunk(c, size, align, pre_align);
      if (p) { ++c->alloc; return p; }


      if (c->next) {
         p = stb__try_chunk(c->next, size, align, pre_align);
         if (p) { ++c->alloc; return p; }





         stb__sort_chunks(src);
         c = stb__chunks(src);
      }
   }


   {
      stb__chunk *n;

      int chunk_size = stb_alloc_chunk_size;

      if (size > chunk_size)
         chunk_size = size;

      assert(sizeof(*n) + pre_align <= 16);




      while (1) {
         n = (stb__chunk *) malloc(16 + chunk_size);
         if (n == ((void*)0)) return ((void*)0);

         n->data_left = chunk_size - sizeof(*n);

         p = stb__try_chunk(n, size, align, pre_align);
         if (p != ((void*)0)) {
            n->next = c;
            stb__setchunks(src, n);



            n->alloc = 1;
            if (size == chunk_size)
               stb__sort_chunks(src);

            return p;
         }

         free(n);
         chunk_size += 16+align;
      }
   }
}
