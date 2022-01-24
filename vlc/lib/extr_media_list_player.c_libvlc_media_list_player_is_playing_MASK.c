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
typedef  scalar_t__ libvlc_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_mi; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 scalar_t__ libvlc_Opening ; 
 scalar_t__ libvlc_Playing ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(libvlc_media_list_player_t * p_mlp)
{
    libvlc_state_t state = FUNC0(p_mlp->p_mi);
    return (state == libvlc_Opening) || (state == libvlc_Playing);
}