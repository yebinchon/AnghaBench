
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ style_stack_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void PopStyle(style_stack_t** pp_stack)
{
    style_stack_t* p_old = *pp_stack;
    if ( !p_old )
        return;
    *pp_stack = p_old->p_next;

    free( p_old );
}
