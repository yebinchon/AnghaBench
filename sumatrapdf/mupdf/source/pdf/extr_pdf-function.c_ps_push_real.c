
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t sp; TYPE_2__* stack; } ;
typedef TYPE_3__ ps_stack ;
struct TYPE_6__ {int f; } ;
struct TYPE_7__ {TYPE_1__ u; int type; } ;


 int FLT_MAX ;
 int PS_REAL ;
 int fz_clamp (float,int ,int ) ;
 scalar_t__ isnan (float) ;
 int ps_overflow (TYPE_3__*,int) ;

__attribute__((used)) static void
ps_push_real(ps_stack *st, float n)
{
 if (!ps_overflow(st, 1))
 {
  st->stack[st->sp].type = PS_REAL;
  if (isnan(n))
  {


   n = 1.0f;
  }
  st->stack[st->sp].u.f = fz_clamp(n, -FLT_MAX, FLT_MAX);
  st->sp++;
 }
}
