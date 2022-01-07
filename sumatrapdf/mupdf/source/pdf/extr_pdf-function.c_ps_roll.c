
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int psobj ;
struct TYPE_4__ {int sp; int * stack; } ;
typedef TYPE_1__ ps_stack ;


 int memmove (int *,int *,int) ;
 scalar_t__ ps_underflow (TYPE_1__*,int) ;

__attribute__((used)) static void
ps_roll(ps_stack *st, int n, int j)
{
 psobj tmp;
 int i;

 if (ps_underflow(st, n) || j == 0 || n == 0)
  return;

 if (j >= 0)
 {
  j %= n;
 }
 else
 {
  j = -j % n;
  if (j != 0)
   j = n - j;
 }

 for (i = 0; i < j; i++)
 {
  tmp = st->stack[st->sp - 1];
  memmove(st->stack + st->sp - n + 1, st->stack + st->sp - n, n * sizeof(psobj));
  st->stack[st->sp - n] = tmp;
 }
}
