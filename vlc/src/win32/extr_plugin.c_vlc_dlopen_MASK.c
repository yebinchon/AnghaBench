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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  void* HMODULE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LOAD_LIBRARY_SEARCH_SYSTEM32 ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEM_FAILCRITICALERRORS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void *FUNC5(const char *psz_file, bool lazy)
{
    wchar_t *wfile = FUNC3 (psz_file);
    if (wfile == NULL)
        return NULL;

    HMODULE handle = NULL;
#if !VLC_WINSTORE_APP
    DWORD mode;
    if (FUNC2 (SEM_FAILCRITICALERRORS, &mode) != 0)
    {
        handle = FUNC0(wfile, NULL, LOAD_LIBRARY_SEARCH_SYSTEM32);
        FUNC2 (mode, NULL);
    }
#else
    handle = LoadPackagedLibrary( wfile, 0 );
#endif
    FUNC4 (wfile);

    (void) lazy;
    return handle;
}