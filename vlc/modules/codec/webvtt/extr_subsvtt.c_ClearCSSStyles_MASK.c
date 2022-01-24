#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* p_next; } ;
typedef  TYPE_1__ webvtt_dom_node_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3( webvtt_dom_node_t *p_node )
{
    if( FUNC2( p_node ) )
        FUNC1( p_node, NULL );
    webvtt_dom_node_t *p_child = FUNC0( p_node );
    for ( ; p_child ; p_child = p_child->p_next )
        FUNC3( p_child );
}