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
typedef  int /*<<< orphan*/  path2 ;
typedef  int /*<<< orphan*/  path1 ;
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const char dllname[] = "shell32.dll";
    char path1[MAX_PATH], path2[MAX_PATH];
    HMODULE hModule1, hModule2, hModule3;

    /* This is not really a Windows conformance test, but more a Wine
     * regression test. Wine's builtin dlls can be loaded from multiple paths,
     * and this test tries to make sure that Wine does not get confused and
     * really unloads the Unix .so file at the right time. Failure to do so
     * will result in the dll being unloadable.
     * This test must be done with a dll that can be unloaded, which means:
     * - it must not already be loaded
     * - it must not have a 16-bit counterpart
     */
    FUNC2(path1, sizeof(path1));
    FUNC5(path1, "\\system\\");
    FUNC5(path1, dllname);
    hModule1 = FUNC3(path1);
    if (!hModule1)
    {
        /* We must be on Windows, so we cannot test */
        return;
    }

    FUNC2(path2, sizeof(path2));
    FUNC5(path2, "\\system32\\");
    FUNC5(path2, dllname);
    hModule2 = FUNC3(path2);
    FUNC4(hModule2 != NULL, "LoadLibrary(%s) failed\n", path2);

    /* The first LoadLibrary() call may have registered the dll under the
     * system32 path. So load it, again, under the '...\system\...' path so
     * Wine does not immediately notice that it is already loaded.
     */
    hModule3 = FUNC3(path1);
    FUNC4(hModule3 != NULL, "LoadLibrary(%s) failed\n", path1);

    /* Now fully unload the dll */
    FUNC4(FUNC0(hModule3), "FreeLibrary() failed\n");
    FUNC4(FUNC0(hModule2), "FreeLibrary() failed\n");
    FUNC4(FUNC0(hModule1), "FreeLibrary() failed\n");
    FUNC4(FUNC1(dllname) == NULL, "%s was not fully unloaded\n", dllname);

    /* Try to load the dll again, if refcounting is ok, this should work */
    hModule1 = FUNC3(path1);
    FUNC4(hModule1 != NULL, "LoadLibrary(%s) failed\n", path1);
    if (hModule1 != NULL)
        FUNC4(FUNC0(hModule1), "FreeLibrary() failed\n");
}