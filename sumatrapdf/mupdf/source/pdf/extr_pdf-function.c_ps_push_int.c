
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t sp; TYPE_2__* stack; } ;
typedef TYPE_3__ ps_stack ;
struct TYPE_6__ {int i; } ;
struct TYPE_7__ {TYPE_1__ u; int type; } ;


 int PS_INT ;
 int ps_overflow (TYPE_3__*,int) ;

__attribute__((used)) static void
ps_push_int(ps_stack *st, int n)
{
 if (!ps_overflow(st, 1))
 {
  st->stack[st->sp].type = PS_INT;
  st->stack[st->sp].u.i = n;
  st->sp++;
 }
}
