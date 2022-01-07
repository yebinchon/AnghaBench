
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int entry; } ;
struct TYPE_5__ {int items; } ;
typedef TYPE_1__ STACK ;
typedef TYPE_2__ FORMSTR ;


 int list_add_head (int *,int *) ;

__attribute__((used)) static void stack_push(STACK *stack, FORMSTR *str)
{
    list_add_head(&stack->items, &str->entry);
}
