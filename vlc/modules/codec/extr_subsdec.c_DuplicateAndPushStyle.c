
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int * p_style; } ;
typedef TYPE_1__ style_stack_t ;


 int STYLE_NO_DEFAULTS ;
 TYPE_1__* malloc (int) ;
 int * text_style_Create (int ) ;
 int text_style_Delete (int *) ;
 int * text_style_Duplicate (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static text_style_t* DuplicateAndPushStyle(style_stack_t** pp_stack)
{
    text_style_t* p_dup = ( *pp_stack ) ? text_style_Duplicate( (*pp_stack)->p_style ) : text_style_Create( STYLE_NO_DEFAULTS );
    if ( unlikely( !p_dup ) )
        return ((void*)0);
    style_stack_t* p_entry = malloc( sizeof( *p_entry ) );
    if ( unlikely( !p_entry ) )
    {
        text_style_Delete( p_dup );
        return ((void*)0);
    }

    p_entry->p_style = p_dup;
    p_entry->p_next = *pp_stack;
    *pp_stack = p_entry;
    return p_dup;
}
