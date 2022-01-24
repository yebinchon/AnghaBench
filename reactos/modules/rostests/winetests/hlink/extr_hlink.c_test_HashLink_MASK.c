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
 int /*<<< orphan*/  HLINKGETREF_RELATIVE ; 
 int /*<<< orphan*/  HLINKSETF_TARGET ; 
 scalar_t__ FUNC0 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlink ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    IHlink *hlink;
    IMoniker *pmk;
    const WCHAR hash_targetW[] = {'a','f','i','l','e','#','a','n','a','n','c','h','o','r',0};
    const WCHAR two_hash_targetW[] = {'a','f','i','l','e','#','a','n','a','n','c','h','o','r','#','a','n','o','t','h','e','r',0};
    const WCHAR hash_no_tgtW[] = {'#','a','n','a','n','c','h','o','r',0};
    const WCHAR tgt_partW[] = {'a','f','i','l','e',0};
    const WCHAR loc_partW[] = {'a','n','a','n','c','h','o','r',0};
    const WCHAR two_hash_loc_partW[] = {'a','n','a','n','c','h','o','r','#','a','n','o','t','h','e','r',0};
    const WCHAR test_locW[] = {'t','e','s','t','l','o','c',0};
    HRESULT hres;

    /* simple single hash test */
    hres = FUNC0(hash_targetW, NULL, NULL, NULL, 0, NULL, &IID_IHlink, (void*)&hlink);
    FUNC5(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    FUNC5(hlink != NULL, "Didn't get an hlink\n");

    if(hlink){
        FUNC4(hlink, tgt_partW, loc_partW);
        pmk = FUNC3(hlink, (IMoniker*)0xFFFFFFFF, loc_partW, HLINKGETREF_RELATIVE);
        FUNC5(pmk != NULL, "Found moniker should not be NULL\n");
        if(pmk)
            FUNC2(pmk);

        FUNC6(hlink, HLINKSETF_TARGET, hash_targetW, NULL);
        FUNC4(hlink, hash_targetW, loc_partW);

        FUNC1(hlink);
    }

    /* two hashes in the target */
    hres = FUNC0(two_hash_targetW, NULL, NULL, NULL, 0, NULL, &IID_IHlink, (void*)&hlink);
    FUNC5(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    FUNC5(hlink != NULL, "Didn't get an hlink\n");

    if(hlink){
        FUNC4(hlink, tgt_partW, two_hash_loc_partW);
        pmk = FUNC3(hlink, (IMoniker*)0xFFFFFFFF, two_hash_loc_partW, HLINKGETREF_RELATIVE);
        FUNC5(pmk != NULL, "Found moniker should not be NULL\n");
        if(pmk)
            FUNC2(pmk);

        FUNC1(hlink);
    }

    /* target with hash plus a location string */
    hres = FUNC0(hash_targetW, test_locW, NULL, NULL, 0, NULL, &IID_IHlink, (void*)&hlink);
    FUNC5(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    FUNC5(hlink != NULL, "Didn't get an hlink\n");

    if(hlink){
        FUNC4(hlink, tgt_partW, test_locW);
        pmk = FUNC3(hlink, (IMoniker*)0xFFFFFFFF, test_locW, HLINKGETREF_RELATIVE);
        FUNC5(pmk != NULL, "Found moniker should not be NULL\n");
        if(pmk)
            FUNC2(pmk);

        FUNC1(hlink);
    }

    /* target with hash containing no "target part" */
    hres = FUNC0(hash_no_tgtW, NULL, NULL, NULL, 0, NULL, &IID_IHlink, (void*)&hlink);
    FUNC5(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    FUNC5(hlink != NULL, "Didn't get an hlink\n");

    if(hlink){
        FUNC4(hlink, NULL, loc_partW);
        pmk = FUNC3(hlink, (IMoniker*)0xFFFFFFFF, loc_partW, HLINKGETREF_RELATIVE);
        FUNC5(pmk == NULL, "Found moniker should be NULL\n");
        if(pmk)
            FUNC2(pmk);

        FUNC1(hlink);
    }
}