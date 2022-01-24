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
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 

int FUNC7(libvlc_int_t *libvlc, const char *name)
{
    int ret;

    if (name != NULL)
        ret = FUNC2(libvlc, name);
    else
    {   /* Default interface */
        char *intf = FUNC6(libvlc, "intf");
        if (intf == NULL) /* "intf" has not been set */
        {
#if !defined(_WIN32) && !defined(__OS2__)
            if (!FUNC5(libvlc, "daemon"))
#endif
                FUNC4(libvlc, FUNC0("Running vlc with the default interface. "
                         "Use 'cvlc' to use vlc without interface."));
        }
        ret = FUNC2(libvlc, intf);
        FUNC1(intf);
        name = "default";
    }
    if (ret != VLC_SUCCESS)
        FUNC3(libvlc, "interface \"%s\" initialization failed", name);
    return ret;
}