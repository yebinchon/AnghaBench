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
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_4__ {int /*<<< orphan*/  object_lock; int /*<<< orphan*/ * p_md; scalar_t__ p_internal_md; } ;
typedef  TYPE_1__ libvlc_media_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( libvlc_media_list_t * p_mlist,
                                  libvlc_media_t * p_md )

{
    FUNC3( &p_mlist->object_lock );
    if( p_mlist->p_internal_md || !FUNC2(p_mlist) )
    {
        FUNC4( &p_mlist->object_lock );
        return;
    }
    FUNC0( p_mlist->p_md );
    FUNC1( p_md );
    p_mlist->p_md = p_md;
    FUNC4( &p_mlist->object_lock );
}