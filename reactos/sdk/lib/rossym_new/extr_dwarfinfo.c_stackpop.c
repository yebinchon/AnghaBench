
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ DwarfStack ;


 int ASSERT (int) ;
 int werrstr (char*,size_t,int ) ;

ulong stackpop(DwarfStack *stack)
{
    ASSERT(stack->length > 0);
    ulong val = stack->data[--stack->length];
    werrstr("pop stack[%d] -> %x", stack->length, val);
    return val;
}
