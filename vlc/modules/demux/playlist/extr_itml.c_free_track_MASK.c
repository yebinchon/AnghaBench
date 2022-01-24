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
struct TYPE_4__ {struct TYPE_4__* location; struct TYPE_4__* trackNum; struct TYPE_4__* genre; struct TYPE_4__* album; struct TYPE_4__* artist; struct TYPE_4__* name; } ;
typedef  TYPE_1__ track_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1( track_elem_t *p_track )
{
    if ( !p_track )
        return;

    FUNC0( p_track->name );
    FUNC0( p_track->artist );
    FUNC0( p_track->album );
    FUNC0( p_track->genre );
    FUNC0( p_track->trackNum );
    FUNC0( p_track->location );
    FUNC0( p_track );
}