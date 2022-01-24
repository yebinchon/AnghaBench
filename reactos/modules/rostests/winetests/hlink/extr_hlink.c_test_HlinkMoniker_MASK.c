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
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  HLINKGETREF_RELATIVE ; 
 int HLINKSETF_LOCATION ; 
 int HLINKSETF_TARGET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char const*,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(void)
{
    IHlink *hlink;
    IMoniker *aMon, *file_mon;
    static const WCHAR emptyW[] = {0};
    static const WCHAR wordsW[] = {'w','o','r','d','s',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    HRESULT hres;

    hres = FUNC1(NULL, NULL, NULL, NULL, 0, NULL, &IID_IHlink, (void**)&hlink);
    FUNC6(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    FUNC5(hlink, NULL, NULL);
    FUNC4(hlink, NULL, NULL, HLINKGETREF_RELATIVE);

    /* setting a string target creates a moniker reference */
    FUNC8(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, aW, wordsW);
    FUNC5(hlink, aW, wordsW);
    aMon = FUNC4(hlink, (IMoniker*)0xFFFFFFFF, wordsW, HLINKGETREF_RELATIVE);
    FUNC6(aMon != NULL, "Moniker from %s target should not be NULL\n", FUNC9(aW));
    if(aMon)
        FUNC3(aMon);

    /* setting target & location to the empty string deletes the moniker
     * reference */
    FUNC8(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, emptyW, emptyW);
    FUNC5(hlink, NULL, NULL);
    FUNC4(hlink, NULL, NULL, HLINKGETREF_RELATIVE);

    /* setting a moniker target also sets the target string to that moniker's
     * display name */
    hres = FUNC0(bW, &file_mon);
    FUNC6(hres == S_OK, "CreateFileMoniker failed: 0x%08x\n", hres);

    FUNC7(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, file_mon, wordsW);
    FUNC5(hlink, bW, wordsW);
    FUNC4(hlink, file_mon, wordsW, HLINKGETREF_RELATIVE);

    FUNC3(file_mon);

    FUNC2(hlink);
}