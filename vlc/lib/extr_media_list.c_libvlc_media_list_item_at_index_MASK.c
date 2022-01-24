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
struct TYPE_3__ {int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ libvlc_media_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

libvlc_media_t *
FUNC4( libvlc_media_list_t * p_mlist,
                                 int index )
{
    libvlc_media_t * p_md;

    if( (size_t) index >= FUNC2( &p_mlist->items ))
    {
        FUNC1( "Index out of bounds" );
        return NULL;
    }

    p_md = FUNC3( &p_mlist->items, index );
    FUNC0( p_md );
    return p_md;
}