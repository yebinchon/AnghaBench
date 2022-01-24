#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 float FUNC1 (int /*<<< orphan*/ *,char*) ; 

float FUNC2( libvlc_media_player_t *mp )
{
    float f_scale = FUNC1 (mp, "zoom");
    if (FUNC0 (mp, "autoscale"))
        f_scale = 0.f;
    return f_scale;
}