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
typedef  unsigned int UINT ;
typedef  scalar_t__ HICON ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 unsigned int FUNC4 (char const*,int,int,int,scalar_t__*,unsigned int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
    const CHAR szShell32Dll[] = "shell32.dll";
    HICON ahIcon[256];
    UINT i, aIconId[256], cIcons, cIcons2;

    if (!&pPrivateExtractIconsA) return;

    cIcons = FUNC4("", 0, 16, 16, ahIcon, aIconId, 1, 0);
    FUNC3(cIcons == ~0u, "got %u\n", cIcons);

    cIcons = FUNC4("notepad.exe", 0, 16, 16, NULL, NULL, 1, 0);
    FUNC3(cIcons == 1 || FUNC2(cIcons == 2) /* win2k */, "got %u\n", cIcons);

    ahIcon[0] = (HICON)0xdeadbeef;
    cIcons = FUNC4("notepad.exe", 0, 16, 16, ahIcon, NULL, 1, 0);
    FUNC3(cIcons == 1, "got %u\n", cIcons);
    FUNC3(ahIcon[0] != (HICON)0xdeadbeef, "icon not set\n");
    FUNC0(ahIcon[0]);

    ahIcon[0] = (HICON)0xdeadbeef;
    aIconId[0] = 0xdeadbeef;
    cIcons = FUNC4("notepad.exe", 0, 16, 16, ahIcon, aIconId, 1, 0);
    FUNC3(cIcons == 1, "got %u\n", cIcons);
    FUNC3(ahIcon[0] != (HICON)0xdeadbeef, "icon not set\n");
    FUNC3(aIconId[0] != 0xdeadbeef, "id not set\n");
    FUNC0(ahIcon[0]);

    cIcons = FUNC4(szShell32Dll, 0, 16, 16, NULL, NULL, 0, 0);
    cIcons2 = FUNC4(szShell32Dll, 4, FUNC1(32,16), FUNC1(32,16), 
                                   NULL, NULL, 256, 0);
    FUNC3((cIcons == cIcons2) && (cIcons > 0), 
       "Icon count should be independent of requested icon sizes and base icon index! "
       "(cIcons=%d, cIcons2=%d)\n", cIcons, cIcons2);

    cIcons = FUNC4(szShell32Dll, 0, 16, 16, ahIcon, aIconId, 0, 0);
    FUNC3(cIcons == 0, "Zero icons requested, got cIcons=%d\n", cIcons);

    cIcons = FUNC4(szShell32Dll, 0, 16, 16, ahIcon, aIconId, 3, 0);
    FUNC3(cIcons == 3, "Three icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) FUNC0(ahIcon[i]);

    /* count must be a multiple of two when getting two sizes */
    cIcons = FUNC4(szShell32Dll, 0, FUNC1(16,32), FUNC1(16,32),
                                   ahIcon, aIconId, 3, 0);
    FUNC3(cIcons == 0 /* vista */ || cIcons == 4, "Three icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) FUNC0(ahIcon[i]);

    cIcons = FUNC4(szShell32Dll, 0, FUNC1(16,32), FUNC1(16,32),
                                   ahIcon, aIconId, 4, 0);
    FUNC3(cIcons == 4, "Four icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) FUNC0(ahIcon[i]);
}