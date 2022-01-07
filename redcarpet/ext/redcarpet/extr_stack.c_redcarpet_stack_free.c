
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ asize; scalar_t__ size; int * item; } ;


 int free (int *) ;

void
redcarpet_stack_free(struct stack *st)
{
 if (!st)
  return;

 free(st->item);

 st->item = ((void*)0);
 st->size = 0;
 st->asize = 0;
}
