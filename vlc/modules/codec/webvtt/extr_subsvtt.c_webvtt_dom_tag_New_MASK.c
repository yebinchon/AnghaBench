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
struct TYPE_4__ {int i_start; int /*<<< orphan*/ * p_parent; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ webvtt_dom_tag_t ;
typedef  int /*<<< orphan*/  webvtt_dom_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_TAG ; 
 TYPE_1__* FUNC0 (int,int) ; 

__attribute__((used)) static webvtt_dom_tag_t * FUNC1( webvtt_dom_node_t *p_parent )
{
    webvtt_dom_tag_t *p_node = FUNC0( 1, sizeof(*p_node) );
    if( p_node )
    {
        p_node->i_start = -1;
        p_node->type = NODE_TAG;
        p_node->p_parent = p_parent;
    }
    return p_node;
}