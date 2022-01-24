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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC4( libvlc_media_player_t *p_mi,
                                   void *drawable )
{
    FUNC0 (p_mi != NULL);
#if defined (_WIN32) || defined (__OS2__)
    var_SetString (p_mi, "dec-dev", "");
    var_SetString (p_mi, "vout", "");
    var_SetString (p_mi, "window",
                   (drawable != NULL) ? "embed-hwnd,any" : "");
    var_SetInteger (p_mi, "drawable-hwnd", (uintptr_t)drawable);
#else
    (void) drawable;
    FUNC1 ("can't set hwnd: WIN32 build required");
    FUNC0(false);
    FUNC3 (p_mi, "vout", "none");
    FUNC3 (p_mi, "window", "none");
#endif
}