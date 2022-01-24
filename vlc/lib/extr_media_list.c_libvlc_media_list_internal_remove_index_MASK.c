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
struct TYPE_4__ {int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ libvlc_media_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EventDidHappen ; 
 int /*<<< orphan*/  EventWillHappen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6( libvlc_media_list_t * p_mlist,
                                             int index )
{
    libvlc_media_t * p_md;

    if( (size_t) index >= FUNC3( &p_mlist->items ))
    {
        FUNC1( "Index out of bounds" );
        return -1;
    }

    p_md = FUNC4( &p_mlist->items, index );

    FUNC2( p_mlist, p_md, index, EventWillHappen );
    FUNC5( &p_mlist->items, index );
    FUNC2( p_mlist, p_md, index, EventDidHappen );

    FUNC0( p_md );
    return 0;
}