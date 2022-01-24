#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  clsid ;
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_11__ {int Data1; } ;
struct TYPE_10__ {int Data1; int Data2; } ;
typedef  int HRESULT ;
typedef  TYPE_1__ CLSID ;

/* Variables and functions */
 int FUNC0 (char*,TYPE_1__*) ; 
 TYPE_5__ CLSID_NULL ; 
 TYPE_5__ CLSID_StdFont ; 
 int CO_E_CLASSSTRING ; 
 TYPE_5__ IID_IClassFactory ; 
 int FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 int S_OK ; 
 char* cf_brokenW ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 char* wszCLSID_StdFont ; 

__attribute__((used)) static void FUNC8(void)
{
    CLSID clsid;
    WCHAR wszCLSID_Broken[50];
    UINT i;

    HRESULT hr = FUNC0(wszCLSID_StdFont, &clsid);
    FUNC6(hr, "CLSIDFromString");
    FUNC5(FUNC1(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    FUNC4(&clsid, 0xab, sizeof(clsid));
    hr = FUNC0(NULL, &clsid);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_NULL), "clsid wasn't equal to CLSID_NULL\n");

    /* string is longer, but starts with a valid CLSID */
    FUNC4(&clsid, 0, sizeof(clsid));
    hr = FUNC0(cf_brokenW, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);
    FUNC5(FUNC1(&clsid, &IID_IClassFactory), "got %s\n", FUNC7(&clsid));

    FUNC2(wszCLSID_Broken, wszCLSID_StdFont);
    for(i = FUNC3(wszCLSID_StdFont); i < 49; i++)
        wszCLSID_Broken[i] = 'A';
    wszCLSID_Broken[i] = '\0';

    FUNC4(&clsid, 0, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    wszCLSID_Broken[FUNC3(wszCLSID_StdFont)-1] = 'A';
    FUNC4(&clsid, 0, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    wszCLSID_Broken[FUNC3(wszCLSID_StdFont)] = '\0';
    FUNC4(&clsid, 0, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    wszCLSID_Broken[FUNC3(wszCLSID_StdFont)-1] = '\0';
    FUNC4(&clsid, 0, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    FUNC4(&clsid, 0xcc, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken+1, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(FUNC1(&clsid, &CLSID_NULL), "clsid wasn't equal to CLSID_NULL\n");

    wszCLSID_Broken[9] = '*';
    FUNC4(&clsid, 0xcc, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(clsid.Data1 == CLSID_StdFont.Data1, "Got %08x\n", clsid.Data1);
    FUNC5(clsid.Data2 == 0xcccc, "Got %04x\n", clsid.Data2);

    wszCLSID_Broken[3] = '*';
    FUNC4(&clsid, 0xcc, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(clsid.Data1 == 0xb, "Got %08x\n", clsid.Data1);
    FUNC5(clsid.Data2 == 0xcccc, "Got %04x\n", clsid.Data2);

    wszCLSID_Broken[3] = '\0';
    FUNC4(&clsid, 0xcc, sizeof(CLSID));
    hr = FUNC0(wszCLSID_Broken, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "Got %08x\n", hr);
    FUNC5(clsid.Data1 == 0xb, "Got %08x\n", clsid.Data1);
    FUNC5(clsid.Data2 == 0xcccc, "Got %04x\n", clsid.Data2);
}