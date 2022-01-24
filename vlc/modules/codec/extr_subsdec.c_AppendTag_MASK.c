#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* psz_tagname; struct TYPE_4__* p_next; } ;
typedef  TYPE_1__ tag_stack_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2( tag_stack_t **pp_stack, char* psz_tagname )
{
    tag_stack_t* p_elem = FUNC0( sizeof( *p_elem ) );
    if ( FUNC1( !p_elem ) )
        return;
    p_elem->p_next = *pp_stack;
    p_elem->psz_tagname = psz_tagname;
    *pp_stack = p_elem;
}