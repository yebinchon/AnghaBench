
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sp; TYPE_1__* stack; } ;
typedef TYPE_2__ ps_stack ;
struct TYPE_5__ {int type; } ;


 int ps_underflow (TYPE_2__*,int) ;

__attribute__((used)) static inline int ps_is_type(ps_stack *st, int t)
{
 return !ps_underflow(st, 1) && st->stack[st->sp - 1].type == t;
}
