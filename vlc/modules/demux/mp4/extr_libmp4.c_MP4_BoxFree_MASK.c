#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_payload; } ;
struct TYPE_7__ {TYPE_1__ data; int /*<<< orphan*/  (* pf_free ) (TYPE_2__*) ;struct TYPE_7__* p_next; struct TYPE_7__* p_first; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2( MP4_Box_t *p_box )
{
    MP4_Box_t    *p_child;

    if( !p_box )
        return; /* hehe */

    for( p_child = p_box->p_first; p_child != NULL; )
    {
        MP4_Box_t *p_next;

        p_next = p_child->p_next;
        FUNC2( p_child );
        p_child = p_next;
    }

    if( p_box->pf_free )
        p_box->pf_free( p_box );

    FUNC0( p_box->data.p_payload );
    FUNC0( p_box );
}