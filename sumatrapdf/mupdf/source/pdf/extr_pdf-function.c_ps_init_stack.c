
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sp; int stack; } ;
typedef TYPE_1__ ps_stack ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
ps_init_stack(ps_stack *st)
{
 memset(st->stack, 0, sizeof(st->stack));
 st->sp = 0;
}
