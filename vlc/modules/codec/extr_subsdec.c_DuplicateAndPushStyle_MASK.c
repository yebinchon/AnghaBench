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
typedef  int /*<<< orphan*/  text_style_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int /*<<< orphan*/ * p_style; } ;
typedef  TYPE_1__ style_stack_t ;

/* Variables and functions */
 int /*<<< orphan*/  STYLE_NO_DEFAULTS ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static text_style_t* FUNC5(style_stack_t** pp_stack)
{
    text_style_t* p_dup = ( *pp_stack ) ? FUNC3( (*pp_stack)->p_style ) : FUNC1( STYLE_NO_DEFAULTS );
    if ( FUNC4( !p_dup ) )
        return NULL;
    style_stack_t* p_entry = FUNC0( sizeof( *p_entry ) );
    if ( FUNC4( !p_entry ) )
    {
        FUNC2( p_dup );
        return NULL;
    }
    // Give the style ownership to the segment.
    p_entry->p_style = p_dup;
    p_entry->p_next = *pp_stack;
    *pp_stack = p_entry;
    return p_dup;
}