
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp; } ;
typedef TYPE_1__ ps_stack ;



__attribute__((used)) static inline int ps_underflow(ps_stack *st, int n)
{
 return n < 0 || n > st->sp;
}
