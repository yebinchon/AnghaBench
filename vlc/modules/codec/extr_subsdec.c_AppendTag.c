
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* psz_tagname; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ tag_stack_t ;


 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void AppendTag( tag_stack_t **pp_stack, char* psz_tagname )
{
    tag_stack_t* p_elem = malloc( sizeof( *p_elem ) );
    if ( unlikely( !p_elem ) )
        return;
    p_elem->p_next = *pp_stack;
    p_elem->psz_tagname = psz_tagname;
    *pp_stack = p_elem;
}
