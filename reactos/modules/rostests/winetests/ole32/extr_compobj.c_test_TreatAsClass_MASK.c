#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_11__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_2__ GUID ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 TYPE_2__ CLSID_FileProtocol ; 
 TYPE_2__ CLSID_NULL ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ REGDB_E_WRITEREGDB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void FUNC14(void)
{
    HRESULT hr;
    CLSID out;
    static GUID deadbeef = {0xdeadbeef,0xdead,0xbeef,{0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef}};
    static const char deadbeefA[] = "{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}";
    IInternetProtocol *pIP = NULL;
    HKEY clsidkey, deadbeefkey;
    LONG lr;

    if (!&pCoGetTreatAsClass)
    {
        FUNC13("CoGetTreatAsClass not present\n");
        return;
    }

    hr = FUNC11(&deadbeef,&out);
    FUNC10 (hr == S_FALSE, "expected S_FALSE got %x\n",hr);
    FUNC10 (FUNC2(&out,&deadbeef), "expected to get same clsid back\n");

    hr = FUNC11(NULL, &out);
    FUNC10(hr == E_INVALIDARG, "expected E_INVALIDARG got %08x\n", hr);
    FUNC10(FUNC2(&out, &deadbeef), "expected no change to the clsid\n");

    hr = FUNC11(&deadbeef, NULL);
    FUNC10(hr == E_INVALIDARG, "expected E_INVALIDARG got %08x\n", hr);

    lr = FUNC8(HKEY_CLASSES_ROOT, "CLSID", 0, KEY_READ, &clsidkey);
    FUNC10(!lr, "Couldn't open CLSID key, error %d\n", lr);

    lr = FUNC6(clsidkey, deadbeefA, 0, NULL, 0, KEY_WRITE, NULL, &deadbeefkey, NULL);
    if (lr) {
        FUNC13("CoGetTreatAsClass() tests will be skipped (failed to create a test key, error %d)\n", lr);
        FUNC5(clsidkey);
        return;
    }

    hr = FUNC12(&deadbeef, &deadbeef);
    FUNC10(hr == REGDB_E_WRITEREGDB, "CoTreatAsClass gave wrong error: %08x\n", hr);

    hr = FUNC12(&deadbeef, &CLSID_FileProtocol);
    if(hr == REGDB_E_WRITEREGDB){
        FUNC13("Insufficient privileges to use CoTreatAsClass\n");
        goto exit;
    }
    FUNC10(hr == S_OK, "CoTreatAsClass failed: %08x\n", hr);

    hr = FUNC11(&deadbeef, &out);
    FUNC10(hr == S_OK, "CoGetTreatAsClass failed: %08x\n",hr);
    FUNC10(FUNC2(&out, &CLSID_FileProtocol), "expected to get substituted clsid\n");

    FUNC3(NULL);

    hr = FUNC0(&deadbeef, NULL, CLSCTX_INPROC_SERVER, &IID_IInternetProtocol, (void **)&pIP);
    if(hr == REGDB_E_CLASSNOTREG)
    {
        FUNC13("IE not installed so can't test CoCreateInstance\n");
        goto exit;
    }

    FUNC10(hr == S_OK, "CoCreateInstance failed: %08x\n", hr);
    if(pIP){
        FUNC1(pIP);
        pIP = NULL;
    }

    hr = FUNC12(&deadbeef, &CLSID_NULL);
    FUNC10(hr == S_OK, "CoTreatAsClass failed: %08x\n", hr);

    hr = FUNC11(&deadbeef, &out);
    FUNC10(hr == S_FALSE, "expected S_FALSE got %08x\n", hr);
    FUNC10(FUNC2(&out, &deadbeef), "expected to get same clsid back\n");

    /* bizarrely, native's CoTreatAsClass takes some time to take effect in CoCreateInstance */
    FUNC9(200);

    hr = FUNC0(&deadbeef, NULL, CLSCTX_INPROC_SERVER, &IID_IInternetProtocol, (void **)&pIP);
    FUNC10(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance gave wrong error: %08x\n", hr);

    if(pIP)
        FUNC1(pIP);

exit:
    FUNC4();
    FUNC5(deadbeefkey);
    FUNC7(clsidkey, deadbeefA);
    FUNC5(clsidkey);
}