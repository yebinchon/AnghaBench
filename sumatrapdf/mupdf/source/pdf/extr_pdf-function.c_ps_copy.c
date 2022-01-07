
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int psobj ;
struct TYPE_5__ {scalar_t__ sp; scalar_t__ stack; } ;
typedef TYPE_1__ ps_stack ;


 int memcpy (scalar_t__,scalar_t__,int) ;
 int ps_overflow (TYPE_1__*,int) ;
 int ps_underflow (TYPE_1__*,int) ;

__attribute__((used)) static void
ps_copy(ps_stack *st, int n)
{
 if (!ps_underflow(st, n) && !ps_overflow(st, n))
 {
  memcpy(st->stack + st->sp, st->stack + st->sp - n, n * sizeof(psobj));
  st->sp += n;
 }
}
