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

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  VLC_PKG_DATA_DIR ; 
 int /*<<< orphan*/  VLC_PKG_LIBEXEC_DIR ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_USERDATA_DIR ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char** FUNC6 (char**,char*,char const*) ; 

int FUNC7(const char *luadirname, char ***restrict listp)
{
    char **list = FUNC3(4 * sizeof(char *));
    if (FUNC5(list == NULL))
        return VLC_EGENERIC;

    *listp = list;

    /* Lua scripts in user-specific data directory */
    list = FUNC6(list, FUNC1(VLC_USERDATA_DIR),
                                  luadirname);

    char *libdir = FUNC0(VLC_PKG_LIBEXEC_DIR, NULL);
    char *datadir = FUNC0(VLC_PKG_DATA_DIR, NULL);
    bool both = libdir != NULL && datadir != NULL && FUNC4(libdir, datadir);

    /* Tokenized Lua scripts in architecture-specific data directory */
    list = FUNC6(list, libdir, luadirname);

    /* Source Lua Scripts in architecture-independent data directory */
    if (both || libdir == NULL)
        list = FUNC6(list, datadir, luadirname);
    else
        FUNC2(datadir);

    *list = NULL;
    return VLC_SUCCESS;
}