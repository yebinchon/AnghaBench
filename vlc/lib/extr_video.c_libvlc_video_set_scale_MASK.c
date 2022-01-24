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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( libvlc_media_player_t *p_mp, float f_scale )
{
    if (FUNC2(f_scale) && f_scale != 0.f)
        FUNC4 (p_mp, "zoom", f_scale);
    FUNC3 (p_mp, "autoscale", f_scale == 0.f);

    /* Apply to current video outputs (if any) */
    size_t n;
    vout_thread_t **pp_vouts = FUNC0 (p_mp, &n);
    for (size_t i = 0; i < n; i++)
    {
        vout_thread_t *p_vout = pp_vouts[i];

        if (FUNC2(f_scale) && f_scale != 0.f)
            FUNC4 (p_vout, "zoom", f_scale);
        FUNC3 (p_vout, "autoscale", f_scale == 0.f);
        FUNC5(p_vout);
    }
    FUNC1 (pp_vouts);
}