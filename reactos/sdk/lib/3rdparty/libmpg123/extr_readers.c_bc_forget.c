
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {scalar_t__ size; scalar_t__ data; struct buffy* next; } ;
struct bufferchain {scalar_t__ pos; scalar_t__ fileoff; scalar_t__ size; scalar_t__ firstpos; struct buffy* first; int * last; } ;


 int bc_free (struct bufferchain*,struct buffy*) ;
 int debug (char*) ;
 int debug2 (char*,unsigned long,unsigned long) ;
 int debug5 (char*,void*,long,long,long,long) ;

__attribute__((used)) static void bc_forget(struct bufferchain *bc)
{
 struct buffy *b = bc->first;


 if(b) debug2("bc_forget: block %lu pos %lu", (unsigned long)b->size, (unsigned long)bc->pos);
 else debug("forget with nothing there!");

 while(b != ((void*)0) && bc->pos >= b->size)
 {
  struct buffy *n = b->next;
  if(n == ((void*)0)) bc->last = ((void*)0);
  bc->fileoff += b->size;
  bc->pos -= b->size;
  bc->size -= b->size;

  debug5("bc_forget: forgot %p with %lu, pos=%li, size=%li, fileoff=%li", (void*)b->data, (long)b->size, (long)bc->pos, (long)bc->size, (long)bc->fileoff);

  bc_free(bc, b);
  b = n;
 }
 bc->first = b;
 bc->firstpos = bc->pos;
}
