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
typedef  char WCHAR ;
typedef  unsigned int UINT ;
typedef  scalar_t__ HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 unsigned int FUNC4 (char const*,int,int,int,scalar_t__*,unsigned int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR notepadW[] = {'n','o','t','e','p','a','d','.','e','x','e',0};
    static const WCHAR shell32W[] = {'s','h','e','l','l','3','2','.','d','l','l',0};
    static const WCHAR emptyW[] = {0};
    UINT ret, ret2;
    HICON icons[256];
    UINT ids[256], i;

    if (!&pSHExtractIconsW)
    {
        FUNC5("SHExtractIconsW not available\n");
        return;
    }

    ret = FUNC4(emptyW, 0, 16, 16, icons, ids, 1, 0);
    FUNC3(ret == ~0u, "got %u\n", ret);

    ret = FUNC4(notepadW, 0, 16, 16, NULL, NULL, 1, 0);
    FUNC3(ret == 1 || FUNC2(ret == 2) /* win2k */, "got %u\n", ret);

    icons[0] = (HICON)0xdeadbeef;
    ret = FUNC4(notepadW, 0, 16, 16, icons, NULL, 1, 0);
    FUNC3(ret == 1, "got %u\n", ret);
    FUNC3(icons[0] != (HICON)0xdeadbeef, "icon not set\n");
    FUNC0(icons[0]);

    icons[0] = (HICON)0xdeadbeef;
    ids[0] = 0xdeadbeef;
    ret = FUNC4(notepadW, 0, 16, 16, icons, ids, 1, 0);
    FUNC3(ret == 1, "got %u\n", ret);
    FUNC3(icons[0] != (HICON)0xdeadbeef, "icon not set\n");
    FUNC3(ids[0] != 0xdeadbeef, "id not set\n");
    FUNC0(icons[0]);

    ret = FUNC4(shell32W, 0, 16, 16, NULL, NULL, 0, 0);
    ret2 = FUNC4(shell32W, 4, FUNC1(32,16), FUNC1(32,16), NULL, NULL, 256, 0);
    FUNC3(ret && ret == ret2,
       "icon count should be independent of requested icon sizes and base icon index\n");

    ret = FUNC4(shell32W, 0, 16, 16, icons, ids, 0, 0);
    FUNC3(ret == ~0u || !ret /* < vista */, "got %u\n", ret);

    ret = FUNC4(shell32W, 0, 16, 16, icons, ids, 3, 0);
    FUNC3(ret == 3, "got %u\n", ret);
    for (i = 0; i < ret; i++) FUNC0(icons[i]);

    /* count must be a multiple of two when getting two sizes */
    ret = FUNC4(shell32W, 0, FUNC1(16,32), FUNC1(16,32), icons, ids, 3, 0);
    FUNC3(!ret /* vista */ || ret == 4, "got %u\n", ret);
    for (i = 0; i < ret; i++) FUNC0(icons[i]);

    ret = FUNC4(shell32W, 0, FUNC1(16,32), FUNC1(16,32), icons, ids, 4, 0);
    FUNC3(ret == 4, "got %u\n", ret);
    for (i = 0; i < ret; i++) FUNC0(icons[i]);
}