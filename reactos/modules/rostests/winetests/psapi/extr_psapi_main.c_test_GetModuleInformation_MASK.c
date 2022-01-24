#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {int SizeOfImage; int /*<<< orphan*/ * lpBaseOfDll; } ;
typedef  TYPE_1__ MODULEINFO ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * hBad ; 
 int /*<<< orphan*/ * hpQI ; 
 int /*<<< orphan*/ * hpQV ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    HMODULE hMod = FUNC2(NULL);
    DWORD *tmp, counter = 0;
    MODULEINFO info;
    DWORD ret;

    FUNC5(0xdeadbeef);
    FUNC3(NULL, hMod, &info, sizeof(info));
    FUNC6(FUNC1() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", FUNC1());

    FUNC5(0xdeadbeef);
    FUNC3(hpQI, hMod, &info, sizeof(info));
    FUNC6(FUNC1() == ERROR_ACCESS_DENIED, "expected error=ERROR_ACCESS_DENIED but got %d\n", FUNC1());

    FUNC5(0xdeadbeef);
    FUNC3(hpQV, hBad, &info, sizeof(info));
    FUNC6(FUNC1() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", FUNC1());

    FUNC5(0xdeadbeef);
    FUNC3(hpQV, hMod, &info, sizeof(info)-1);
    FUNC6(FUNC1() == ERROR_INSUFFICIENT_BUFFER, "expected error=ERROR_INSUFFICIENT_BUFFER but got %d\n", FUNC1());

    ret = FUNC3(hpQV, hMod, &info, sizeof(info));
    FUNC6(ret == 1, "failed with %d\n", FUNC1());
    FUNC6(info.lpBaseOfDll == hMod, "lpBaseOfDll=%p hMod=%p\n", info.lpBaseOfDll, hMod);

    hMod = FUNC4("shell32.dll");
    FUNC6(hMod != NULL, "Failed to load shell32.dll, error: %u\n", FUNC1());

    ret = FUNC3(hpQV, hMod, &info, sizeof(info));
    FUNC6(ret == 1, "failed with %d\n", FUNC1());
    info.SizeOfImage /= sizeof(DWORD);
    for (tmp = (DWORD *)hMod; info.SizeOfImage; info.SizeOfImage--)
        counter ^= *tmp++;
    FUNC7("xor of shell32: %08x\n", counter);

    FUNC0(hMod);
}