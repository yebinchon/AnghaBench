
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t sp; int * stack; } ;
typedef TYPE_1__ ps_stack ;


 int ps_overflow (TYPE_1__*,int) ;
 int ps_underflow (TYPE_1__*,int) ;

__attribute__((used)) static void
ps_index(ps_stack *st, int n)
{
 if (!ps_overflow(st, 1) && !ps_underflow(st, n + 1))
 {
  st->stack[st->sp] = st->stack[st->sp - n - 1];
  st->sp++;
 }
}
