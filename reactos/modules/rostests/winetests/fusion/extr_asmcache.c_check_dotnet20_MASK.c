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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CLDB_E_FILE_OLDVER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_ACCESSDENIED ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9(void)
{
    IAssemblyCache *cache;
    HRESULT hr;
    BOOL ret = FALSE;
    ULONG disp;

    static const WCHAR winedll[] = {'w','i','n','e','.','d','l','l',0};

    FUNC4("wine.dll");

    hr = FUNC6(&cache, 0);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC1(cache, 0, winedll, NULL);
    if (hr == S_OK)
        ret = TRUE;
    else if (hr == CLDB_E_FILE_OLDVER)
        FUNC8("Tests can't be run on older .NET version (.NET 1.1)\n");
    else if (hr == E_ACCESSDENIED)
        FUNC7("Not enough rights to install an assembly\n");
    else
        FUNC5(0, "Expected S_OK, got %08x\n", hr);

    FUNC0("wine.dll");
    FUNC3(cache, 0, winedll, NULL, &disp);
    FUNC2(cache);
    return ret;
}