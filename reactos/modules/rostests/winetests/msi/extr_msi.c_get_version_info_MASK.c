#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int USHORT ;
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/ * LPDWORD ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC10(LPSTR path, LPSTR *vercheck, LPDWORD verchecksz,
                             LPSTR *langcheck, LPDWORD langchecksz)
{
    LPSTR version;
    VS_FIXEDFILEINFO *ffi;
    DWORD size = FUNC1(path, NULL);
    USHORT *lang;

    version = FUNC4(FUNC2(), 0, size);
    FUNC0(path, 0, size, version);

    FUNC7(version, "\\", (LPVOID *)&ffi, &size);
    *vercheck = FUNC4(FUNC2(), 0, MAX_PATH);
    FUNC9(*vercheck, "%d.%d.%d.%d", FUNC3(ffi->dwFileVersionMS),
            FUNC6(ffi->dwFileVersionMS), FUNC3(ffi->dwFileVersionLS),
            FUNC6(ffi->dwFileVersionLS));
    *verchecksz = FUNC8(*vercheck);

    FUNC7(version, "\\VarFileInfo\\Translation", (void **)&lang, &size);
    *langcheck = FUNC4(FUNC2(), 0, MAX_PATH);
    FUNC9(*langcheck, "%d", *lang);
    *langchecksz = FUNC8(*langcheck);

    FUNC5(FUNC2(), 0, version);
}