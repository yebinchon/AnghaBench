
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int size; void** item; } ;


 scalar_t__ redcarpet_stack_grow (struct stack*,int) ;

int
redcarpet_stack_push(struct stack *st, void *item)
{
 if (redcarpet_stack_grow(st, st->size * 2) < 0)
  return -1;

 st->item[st->size++] = item;
 return 0;
}
