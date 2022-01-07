
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {size_t asize; void** item; size_t size; } ;


 int memset (void**,int,size_t) ;
 void** realloc (void**,size_t) ;

int
redcarpet_stack_grow(struct stack *st, size_t new_size)
{
 void **new_st;

 if (st->asize >= new_size)
  return 0;

 new_st = realloc(st->item, new_size * sizeof(void *));
 if (new_st == ((void*)0))
  return -1;

 memset(new_st + st->asize, 0x0,
  (new_size - st->asize) * sizeof(void *));

 st->item = new_st;
 st->asize = new_size;

 if (st->size > new_size)
  st->size = new_size;

 return 0;
}
