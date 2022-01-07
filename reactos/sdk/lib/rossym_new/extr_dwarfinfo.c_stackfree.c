
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; scalar_t__ storage; } ;
typedef TYPE_1__ DwarfStack ;


 int free (scalar_t__) ;

void stackfree(DwarfStack *stack)
{
    if (stack->data != stack->storage)
        free(stack->data);
}
