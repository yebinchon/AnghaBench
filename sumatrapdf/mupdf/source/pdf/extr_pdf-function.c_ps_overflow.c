
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp; int stack; } ;
typedef TYPE_1__ ps_stack ;


 scalar_t__ nelem (int ) ;

__attribute__((used)) static inline int ps_overflow(ps_stack *st, int n)
{
 return n < 0 || st->sp + n >= (int)nelem(st->stack);
}
