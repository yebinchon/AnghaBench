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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC4( libvlc_media_player_t *p_mi,
                                        void * drawable )
{
    FUNC0 (p_mi != NULL);
#ifdef __APPLE__
    var_SetString (p_mi, "dec-dev", "");
    var_SetString (p_mi, "vout", "");
    var_SetString (p_mi, "window", "");
    var_SetAddress (p_mi, "drawable-nsobject", drawable);
#else
    (void)drawable;
    FUNC1 ("can't set nsobject: APPLE build required");
    FUNC0(false);
    FUNC3 (p_mi, "vout", "none");
    FUNC3 (p_mi, "window", "none");
#endif
}