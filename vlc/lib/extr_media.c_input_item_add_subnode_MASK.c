#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_3__ {int i_children; int /*<<< orphan*/  p_item; struct TYPE_3__** pp_children; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( libvlc_media_t *md,
                                    input_item_node_t *node )
{
    for( int i = 0; i < node->i_children; i++ )
    {
        input_item_node_t *child = node->pp_children[i];
        libvlc_media_t *md_child = FUNC0( md, child->p_item );

        if( md_child != NULL )
        {
            FUNC2( md_child, child );
            FUNC1( md_child );
        }
    }
}