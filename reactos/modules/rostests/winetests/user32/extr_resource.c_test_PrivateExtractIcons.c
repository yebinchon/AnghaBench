
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef scalar_t__ HICON ;
typedef char CHAR ;


 int DestroyIcon (scalar_t__) ;
 int MAKELONG (int,int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 unsigned int pPrivateExtractIconsA (char const*,int,int,int,scalar_t__*,unsigned int*,int,int ) ;

__attribute__((used)) static void test_PrivateExtractIcons(void) {
    const CHAR szShell32Dll[] = "shell32.dll";
    HICON ahIcon[256];
    UINT i, aIconId[256], cIcons, cIcons2;

    if (!pPrivateExtractIconsA) return;

    cIcons = pPrivateExtractIconsA("", 0, 16, 16, ahIcon, aIconId, 1, 0);
    ok(cIcons == ~0u, "got %u\n", cIcons);

    cIcons = pPrivateExtractIconsA("notepad.exe", 0, 16, 16, ((void*)0), ((void*)0), 1, 0);
    ok(cIcons == 1 || broken(cIcons == 2) , "got %u\n", cIcons);

    ahIcon[0] = (HICON)0xdeadbeef;
    cIcons = pPrivateExtractIconsA("notepad.exe", 0, 16, 16, ahIcon, ((void*)0), 1, 0);
    ok(cIcons == 1, "got %u\n", cIcons);
    ok(ahIcon[0] != (HICON)0xdeadbeef, "icon not set\n");
    DestroyIcon(ahIcon[0]);

    ahIcon[0] = (HICON)0xdeadbeef;
    aIconId[0] = 0xdeadbeef;
    cIcons = pPrivateExtractIconsA("notepad.exe", 0, 16, 16, ahIcon, aIconId, 1, 0);
    ok(cIcons == 1, "got %u\n", cIcons);
    ok(ahIcon[0] != (HICON)0xdeadbeef, "icon not set\n");
    ok(aIconId[0] != 0xdeadbeef, "id not set\n");
    DestroyIcon(ahIcon[0]);

    cIcons = pPrivateExtractIconsA(szShell32Dll, 0, 16, 16, ((void*)0), ((void*)0), 0, 0);
    cIcons2 = pPrivateExtractIconsA(szShell32Dll, 4, MAKELONG(32,16), MAKELONG(32,16),
                                   ((void*)0), ((void*)0), 256, 0);
    ok((cIcons == cIcons2) && (cIcons > 0),
       "Icon count should be independent of requested icon sizes and base icon index! "
       "(cIcons=%d, cIcons2=%d)\n", cIcons, cIcons2);

    cIcons = pPrivateExtractIconsA(szShell32Dll, 0, 16, 16, ahIcon, aIconId, 0, 0);
    ok(cIcons == 0, "Zero icons requested, got cIcons=%d\n", cIcons);

    cIcons = pPrivateExtractIconsA(szShell32Dll, 0, 16, 16, ahIcon, aIconId, 3, 0);
    ok(cIcons == 3, "Three icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) DestroyIcon(ahIcon[i]);


    cIcons = pPrivateExtractIconsA(szShell32Dll, 0, MAKELONG(16,32), MAKELONG(16,32),
                                   ahIcon, aIconId, 3, 0);
    ok(cIcons == 0 || cIcons == 4, "Three icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) DestroyIcon(ahIcon[i]);

    cIcons = pPrivateExtractIconsA(szShell32Dll, 0, MAKELONG(16,32), MAKELONG(16,32),
                                   ahIcon, aIconId, 4, 0);
    ok(cIcons == 4, "Four icons requested got cIcons=%d\n", cIcons);
    for (i = 0; i < cIcons; i++) DestroyIcon(ahIcon[i]);
}
