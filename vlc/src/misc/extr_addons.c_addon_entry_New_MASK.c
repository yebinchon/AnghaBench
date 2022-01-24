#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  files; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ addon_entry_t ;
struct TYPE_6__ {TYPE_1__ entry; int /*<<< orphan*/  rc; } ;
typedef  TYPE_2__ addon_entry_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

addon_entry_t * FUNC5(void)
{
    addon_entry_owner_t *owner = FUNC1( 1, sizeof(addon_entry_owner_t) );
    if( FUNC2(owner == NULL) )
        return NULL;

    FUNC3( &owner->rc );

    addon_entry_t *p_entry = &owner->entry;
    FUNC4( &p_entry->lock );
    FUNC0( p_entry->files );
    return p_entry;
}