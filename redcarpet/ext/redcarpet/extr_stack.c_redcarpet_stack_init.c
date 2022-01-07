
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ asize; scalar_t__ size; int * item; } ;


 int redcarpet_stack_grow (struct stack*,size_t) ;

int
redcarpet_stack_init(struct stack *st, size_t initial_size)
{
 st->item = ((void*)0);
 st->size = 0;
 st->asize = 0;

 if (!initial_size)
  initial_size = 8;

 return redcarpet_stack_grow(st, initial_size);
}
