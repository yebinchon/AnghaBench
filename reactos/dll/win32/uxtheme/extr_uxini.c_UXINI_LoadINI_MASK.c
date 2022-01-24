#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UXINI_FILE ;
struct TYPE_4__ {void* lpEnd; void* lpCurLoc; void* lpIni; } ;
typedef  TYPE_1__* PUXINI_FILE ;
typedef  void* LPCWSTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  szTextFileResource ; 

PUXINI_FILE FUNC7(HMODULE hTheme, LPCWSTR lpName) {
    HRSRC hrsc;
    LPCWSTR lpThemesIni = NULL;
    PUXINI_FILE uf;
    DWORD dwIniSize;

    FUNC5("Loading resource INI %s\n", FUNC6(lpName));

    if((hrsc = FUNC0(hTheme, lpName, szTextFileResource))) {
        if(!(lpThemesIni = FUNC3(hTheme, hrsc))) {
            FUNC5("%s resource not found\n", FUNC6(lpName));
            return NULL;
        }
    }

    dwIniSize = FUNC4(hTheme, hrsc) / sizeof(WCHAR);
    uf = FUNC2(FUNC1(), 0, sizeof(UXINI_FILE));
    uf->lpIni = lpThemesIni;
    uf->lpCurLoc = lpThemesIni;
    uf->lpEnd = lpThemesIni + dwIniSize;
    return uf;
}