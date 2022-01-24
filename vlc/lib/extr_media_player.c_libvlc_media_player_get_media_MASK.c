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
struct TYPE_3__ {int /*<<< orphan*/  player; int /*<<< orphan*/ * p_md; } ;
typedef  TYPE_1__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

libvlc_media_t *
FUNC3( libvlc_media_player_t *p_mi )
{
    libvlc_media_t *p_m;

    FUNC1(p_mi->player);
    p_m = p_mi->p_md;
    if( p_m )
        FUNC0( p_m );
    FUNC2(p_mi->player);

    return p_m;
}