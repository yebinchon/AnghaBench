
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {scalar_t__ size; scalar_t__ data; struct buffy* next; } ;
struct bufferchain {scalar_t__ size; scalar_t__ pos; struct buffy* first; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ bc_need_more (struct bufferchain*) ;
 int debug2 (char*,long,long) ;
 int debug3 (char*,long,scalar_t__,long) ;
 int memcpy (unsigned char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t bc_give(struct bufferchain *bc, unsigned char *out, ssize_t size)
{
 struct buffy *b = bc->first;
 ssize_t gotcount = 0;
 ssize_t offset = 0;
 if(bc->size - bc->pos < size) return bc_need_more(bc);


 while(b != ((void*)0) && (offset + b->size) <= bc->pos)
 {
  offset += b->size;
  b = b->next;
 }

 while(gotcount < size && (b != ((void*)0)))
 {
  ssize_t loff = bc->pos - offset;
  ssize_t chunk = size - gotcount;
  if(chunk > b->size - loff) chunk = b->size - loff;





  memcpy(out+gotcount, b->data+loff, chunk);
  gotcount += chunk;
  bc->pos += chunk;
  offset += b->size;
  b = b->next;
 }




 return gotcount;
}
