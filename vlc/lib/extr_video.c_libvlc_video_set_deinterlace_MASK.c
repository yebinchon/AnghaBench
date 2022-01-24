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
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( libvlc_media_player_t *p_mi, int deinterlace,
                                   const char *psz_mode )
{
    if (deinterlace != 0 && deinterlace != 1)
        deinterlace = -1;

    if (psz_mode
     && FUNC2 (psz_mode, "blend")    && FUNC2 (psz_mode, "bob")
     && FUNC2 (psz_mode, "discard")  && FUNC2 (psz_mode, "linear")
     && FUNC2 (psz_mode, "mean")     && FUNC2 (psz_mode, "x")
     && FUNC2 (psz_mode, "yadif")    && FUNC2 (psz_mode, "yadif2x")
     && FUNC2 (psz_mode, "phosphor") && FUNC2 (psz_mode, "ivtc")
     && FUNC2 (psz_mode, "auto"))
        return;

    if (psz_mode && deinterlace != 0)
        FUNC4 (p_mi, "deinterlace-mode", psz_mode);

    FUNC3 (p_mi, "deinterlace", deinterlace);

    size_t n;
    vout_thread_t **pp_vouts = FUNC0 (p_mi, &n);
    for (size_t i = 0; i < n; i++)
    {
        vout_thread_t *p_vout = pp_vouts[i];

        if (psz_mode && deinterlace != 0)
            FUNC4 (p_vout, "deinterlace-mode", psz_mode);

        FUNC3 (p_vout, "deinterlace", deinterlace);
        FUNC5(p_vout);
    }
    FUNC1 (pp_vouts);
}