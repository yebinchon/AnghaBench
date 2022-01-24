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
typedef  char wchar_t ;
typedef  char* HMODULE ;
typedef  long DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 long ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

DWORD FUNC7(char** libnames, int counter, BOOL bUseAnsi)
{
    HMODULE hModule;

    FUNC4("Attempting to LoadLibrary");
    if (bUseAnsi) {
        FUNC4("A(%s) - ", *libnames);
        hModule = FUNC1(*libnames);
    } else {
        int len;
        wchar_t libnameW[500];
        len = FUNC5(libnameW, *libnames, FUNC6(*libnames));
        if (len) {
            libnameW[len] = L'\0';
            FUNC4("W(%S) - ", libnameW);
            hModule = FUNC2(libnameW);
        } else {
            return ERROR_INVALID_PARAMETER;
        }
    }
    if (hModule == NULL) {
        FUNC4("\nERROR: failed to obtain handle to module %s - %x\n", *libnames, hModule);
        return FUNC3();
    }
    FUNC4("%x\n", hModule);

    if (counter--) {
        FUNC7(++libnames, counter, bUseAnsi);
    }

    if (!FUNC0(hModule)) {
        FUNC4("ERROR: failed to free module %s - %x\n", *libnames, hModule);
        return FUNC3();
    } else {
        FUNC4("FreeLibrary(%x) - successfull.\n", hModule);
    }
    return 0L;
}