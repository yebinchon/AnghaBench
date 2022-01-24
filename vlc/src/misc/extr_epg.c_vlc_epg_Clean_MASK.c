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
struct TYPE_3__ {size_t i_event; int /*<<< orphan*/  psz_name; int /*<<< orphan*/ * pp_event; } ;
typedef  TYPE_1__ vlc_epg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( vlc_epg_t *p_epg )
{
    size_t i;
    for( i = 0; i < p_epg->i_event; i++ )
        FUNC2( p_epg->pp_event[i] );
    FUNC0( p_epg->i_event, p_epg->pp_event );
    FUNC1( p_epg->psz_name );
}