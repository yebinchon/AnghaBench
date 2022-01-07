
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int items; } ;
typedef TYPE_1__ STACK ;


 int list_init (int *) ;
 TYPE_1__* msi_alloc (int) ;

__attribute__((used)) static STACK *create_stack(void)
{
    STACK *stack = msi_alloc(sizeof(STACK));
    list_init(&stack->items);
    return stack;
}
