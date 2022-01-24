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
struct TYPE_3__ {int /*<<< orphan*/  object_lock; int /*<<< orphan*/ * p_md; int /*<<< orphan*/ * p_internal_md; } ;
typedef  TYPE_1__ libvlc_media_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

libvlc_media_t *
FUNC3( libvlc_media_list_t * p_mlist )
{
    libvlc_media_t *p_md;

    FUNC1( &p_mlist->object_lock );
    p_md = p_mlist->p_internal_md ? p_mlist->p_internal_md : p_mlist->p_md;
    if( p_md )
        FUNC0( p_md );
    FUNC2( &p_mlist->object_lock );

    return p_md;
}