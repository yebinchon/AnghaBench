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
typedef  int /*<<< orphan*/  infoW ;
typedef  char WCHAR ;
struct TYPE_3__ {int cbSize; int uMax; char const* lpszSubKey; int /*<<< orphan*/ * lpfnCompare; int /*<<< orphan*/ * hKey; scalar_t__ fFlags; } ;
typedef  TYPE_1__ MRUINFOW ;
typedef  void* HKEY ;
typedef  void* HANDLE ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 void* REG_TEST_KEYA ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,void**) ; 
 int /*<<< orphan*/  hComctl32 ; 
 int /*<<< orphan*/  FUNC3 (int,char*,void*) ; 
 void* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR mrutestW[] = {'M','R','U','T','e','s','t',0};
    MRUINFOW infoW;
    void *named;
    HKEY hKey;
    HANDLE hMru;

    if (!&pCreateMRUListLazyW)
    {
        FUNC6("CreateMRUListLazyW entry point not found\n");
        return;
    }

    /* check that it's not exported by name */
    named = FUNC0(hComctl32, "CreateMRUListLazyW");
    FUNC3(named == NULL, "got %p\n", named);

    FUNC3(!FUNC2(HKEY_CURRENT_USER, REG_TEST_KEYA, &hKey),
       "Couldn't create test key \"%s\"\n", REG_TEST_KEYA);

    infoW.cbSize = sizeof(infoW);
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = NULL;

    hMru = FUNC4(&infoW, 0, 0, 0);
    FUNC3(hMru != NULL, "got %p\n", hMru);
    FUNC5(hMru);

    /* smaller size */
    infoW.cbSize = sizeof(infoW) - 1;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = NULL;

    hMru = FUNC4(&infoW, 0, 0, 0);
    FUNC3(hMru != NULL, "got %p\n", hMru);
    FUNC5(hMru);

    /* increased size */
    infoW.cbSize = sizeof(infoW) + 1;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = NULL;

    hMru = FUNC4(&infoW, 0, 0, 0);
    FUNC3(hMru != NULL, "got %p\n", hMru);
    FUNC5(hMru);

    /* zero size */
    infoW.cbSize = 0;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = NULL;

    hMru = FUNC4(&infoW, 0, 0, 0);
    FUNC3(hMru != NULL, "got %p\n", hMru);
    FUNC5(hMru);

    /* NULL hKey */
    infoW.cbSize = sizeof(infoW);
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = NULL;
    infoW.lpfnCompare = NULL;

    hMru = FUNC4(&infoW, 0, 0, 0);
    FUNC3(hMru == NULL, "got %p\n", hMru);

    FUNC1(hKey);
}