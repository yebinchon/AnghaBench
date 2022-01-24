#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {TYPE_2__* p_next; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
typedef  TYPE_2__ asf_object_t ;
struct TYPE_9__ {TYPE_2__* p_first; } ;
typedef  TYPE_3__ asf_object_root_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2( stream_t *s, asf_object_root_t *p_root )
{
    asf_object_t *p_obj;

    p_obj = p_root->p_first;
    while( p_obj )
    {
        asf_object_t *p_next;
        p_next = p_obj->common.p_next;
        FUNC0( s, p_obj );
        p_obj = p_next;
    }
    FUNC1( p_root );
}