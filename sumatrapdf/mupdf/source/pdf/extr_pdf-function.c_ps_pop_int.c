
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t sp; TYPE_2__* stack; } ;
typedef TYPE_3__ ps_stack ;
struct TYPE_7__ {int i; int f; } ;
struct TYPE_8__ {TYPE_1__ u; } ;


 int PS_INT ;
 int PS_REAL ;
 scalar_t__ ps_is_type (TYPE_3__*,int ) ;
 int ps_underflow (TYPE_3__*,int) ;

__attribute__((used)) static int
ps_pop_int(ps_stack *st)
{
 if (!ps_underflow(st, 1))
 {
  if (ps_is_type(st, PS_INT))
   return st->stack[--st->sp].u.i;
  if (ps_is_type(st, PS_REAL))
   return st->stack[--st->sp].u.f;
 }
 return 0;
}
