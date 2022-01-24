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
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  vlc_probe_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SD_CAT_DEVICES ; 
 int VLC_PROBE_CONTINUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (vlc_object_t *obj)
{
    vlc_probe_t *probe = (vlc_probe_t *)obj;

    char *display = FUNC2 (obj, "x11-display");
    xcb_connection_t *conn = FUNC4 (display, NULL);
    FUNC1 (display);
    if (FUNC5 (conn))
        return VLC_PROBE_CONTINUE;
    FUNC6 (conn);
    return FUNC3 (probe, "xcb_apps",
                             FUNC0("Screen capture"), SD_CAT_DEVICES);
}