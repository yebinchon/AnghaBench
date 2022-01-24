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
struct TYPE_4__ {int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ libvlc_media_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int64_t
FUNC5( libvlc_media_t * p_md )
{
    FUNC0( p_md );

    if( !p_md->p_input_item )
    {
        FUNC4( "No input item" );
        return -1;
    }

    if (!FUNC3( p_md->p_input_item ))
        return -1;

    return FUNC1(FUNC2( p_md->p_input_item ));
}