#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iid ;
typedef  char WCHAR ;
struct TYPE_6__ {int Data1; } ;
typedef  TYPE_1__ IID ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_NULL ; 
 int /*<<< orphan*/  CLSID_StdFont ; 
 int CO_E_IIDSTRING ; 
 int E_INVALIDARG ; 
 int FUNC0 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 char const* cf_brokenW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 char const* stdfont ; 
 int FUNC4 (TYPE_1__*) ; 
 char const* wszCLSID_StdFont ; 
 char const* wszNonExistent ; 

__attribute__((used)) static void FUNC5(void)
{
    static const WCHAR cfW[] = {'{','0','0','0','0','0','0','0','1','-','0','0','0','0','-','0','0','0','0','-',
                                    'c','0','0','0','-','0','0','0','0','0','0','0','0','0','0','4','6','}',0};
    static const WCHAR brokenW[] = {'{','0','0','0','0','0','0','0','1','-','0','0','0','0','-','0','0','0','0','-',
                                        'g','0','0','0','-','0','0','0','0','0','0','0','0','0','0','4','6','}',0};
    static const WCHAR broken2W[] = {'{','0','0','0','0','0','0','0','1','=','0','0','0','0','-','0','0','0','0','-',
                                        'g','0','0','0','-','0','0','0','0','0','0','0','0','0','0','4','6','}',0};
    static const WCHAR broken3W[] = {'b','r','o','k','e','n','0','0','1','=','0','0','0','0','-','0','0','0','0','-',
                                        'g','0','0','0','-','0','0','0','0','0','0','0','0','0','0','4','6','}',0};
    HRESULT hr;
    IID iid;

    hr = FUNC0(wszCLSID_StdFont, &iid);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    FUNC3(FUNC1(&iid, &CLSID_StdFont), "got iid %s\n", FUNC4(&iid));

    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(NULL, &iid);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    FUNC3(FUNC1(&iid, &CLSID_NULL), "got iid %s\n", FUNC4(&iid));

    hr = FUNC0(cfW, &iid);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    FUNC3(FUNC1(&iid, &IID_IClassFactory), "got iid %s\n", FUNC4(&iid));

    /* string starts with a valid IID but is longer */
    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(cf_brokenW, &iid);
    FUNC3(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0xabababab, "Got %08x\n", iid.Data1);

    /* invalid IID in a valid format */
    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(brokenW, &iid);
    FUNC3(hr == CO_E_IIDSTRING, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0x00000001, "Got %08x\n", iid.Data1);

    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(broken2W, &iid);
    FUNC3(hr == CO_E_IIDSTRING, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0x00000001, "Got %08x\n", iid.Data1);

    /* format is broken, but string length is okay */
    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(broken3W, &iid);
    FUNC3(hr == CO_E_IIDSTRING, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0xabababab, "Got %08x\n", iid.Data1);

    /* invalid string */
    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(wszNonExistent, &iid);
    FUNC3(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0xabababab, "Got %08x\n", iid.Data1);

    /* valid ProgID */
    FUNC2(&iid, 0xab, sizeof(iid));
    hr = FUNC0(stdfont, &iid);
    FUNC3(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC3(iid.Data1 == 0xabababab, "Got %08x\n", iid.Data1);
}