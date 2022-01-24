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
typedef  int /*<<< orphan*/  fmtid ;
typedef  int WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int FMTID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ E_INVALIDARG ; 
 int FMTID_DocSummaryInformation ; 
 int FMTID_SummaryInformation ; 
 int FMTID_UserDefinedProperties ; 
 int IID_IPropertySetStorage ; 
 scalar_t__ STG_E_INVALIDNAME ; 
 scalar_t__ S_OK ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int*,int*) ; 
 scalar_t__ FUNC5 (int*,int*) ; 

__attribute__((used)) static void FUNC6(void)
{
    WCHAR szSummaryInfo[] = { 5,'S','u','m','m','a','r','y',
        'I','n','f','o','r','m','a','t','i','o','n',0 };
    WCHAR szDocSummaryInfo[] = { 5,'D','o','c','u','m','e','n','t',
        'S','u','m','m','a','r','y','I','n','f','o','r','m','a','t','i','o','n',
        0 };
    WCHAR szIID_IPropSetStg[] = { 5,'0','j','a','a','a','a','a',
        'a','A','a','a','a','a','a','d','a','A','a','a','a','a','a','a','a','G',
        'c',0 };
    WCHAR name[32];
    FMTID fmtid;
    HRESULT hr;

    if (&pFmtIdToPropStgName) {
    hr = FUNC4(NULL, name);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got 0x%08x\n", hr);
    hr = FUNC4(&FMTID_SummaryInformation, NULL);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got 0x%08x\n", hr);
    hr = FUNC4(&FMTID_SummaryInformation, name);
    FUNC3(hr == S_OK, "FmtIdToPropStgName failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(name, szSummaryInfo, (FUNC1(szSummaryInfo) + 1) *
     sizeof(WCHAR)), "Got wrong name for FMTID_SummaryInformation\n");
    hr = FUNC4(&FMTID_DocSummaryInformation, name);
    FUNC3(hr == S_OK, "FmtIdToPropStgName failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(name, szDocSummaryInfo, (FUNC1(szDocSummaryInfo) + 1) *
     sizeof(WCHAR)), "Got wrong name for FMTID_DocSummaryInformation\n");
    hr = FUNC4(&FMTID_UserDefinedProperties, name);
    FUNC3(hr == S_OK, "FmtIdToPropStgName failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(name, szDocSummaryInfo, (FUNC1(szDocSummaryInfo) + 1) *
     sizeof(WCHAR)), "Got wrong name for FMTID_DocSummaryInformation\n");
    hr = FUNC4(&IID_IPropertySetStorage, name);
    FUNC3(hr == S_OK, "FmtIdToPropStgName failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(name, szIID_IPropSetStg, (FUNC1(szIID_IPropSetStg) + 1) *
     sizeof(WCHAR)), "Got wrong name for IID_IPropertySetStorage\n");
    }

    if(&pPropStgNameToFmtId) {
    /* test args first */
    hr = FUNC5(NULL, NULL);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got 0x%08x\n", hr);
    hr = FUNC5(NULL, &fmtid);
    FUNC3(hr == STG_E_INVALIDNAME, "Expected STG_E_INVALIDNAME, got 0x%08x\n",
     hr);
    hr = FUNC5(szDocSummaryInfo, NULL);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got 0x%08x\n", hr);
    /* test the known format IDs */
    hr = FUNC5(szSummaryInfo, &fmtid);
    FUNC3(hr == S_OK, "PropStgNameToFmtId failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(&fmtid, &FMTID_SummaryInformation, sizeof(fmtid)),
     "Got unexpected FMTID, expected FMTID_SummaryInformation\n");
    hr = FUNC5(szDocSummaryInfo, &fmtid);
    FUNC3(hr == S_OK, "PropStgNameToFmtId failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(&fmtid, &FMTID_DocSummaryInformation, sizeof(fmtid)),
     "Got unexpected FMTID, expected FMTID_DocSummaryInformation\n");
    /* test another GUID */
    hr = FUNC5(szIID_IPropSetStg, &fmtid);
    FUNC3(hr == S_OK, "PropStgNameToFmtId failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(&fmtid, &IID_IPropertySetStorage, sizeof(fmtid)),
     "Got unexpected FMTID, expected IID_IPropertySetStorage\n");
    /* now check case matching */
    FUNC0(szDocSummaryInfo + 1);
    hr = FUNC5(szDocSummaryInfo, &fmtid);
    FUNC3(hr == S_OK, "PropStgNameToFmtId failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(&fmtid, &FMTID_DocSummaryInformation, sizeof(fmtid)),
     "Got unexpected FMTID, expected FMTID_DocSummaryInformation\n");
    FUNC0(szIID_IPropSetStg + 1);
    hr = FUNC5(szIID_IPropSetStg, &fmtid);
    FUNC3(hr == S_OK, "PropStgNameToFmtId failed: 0x%08x\n", hr);
    FUNC3(!FUNC2(&fmtid, &IID_IPropertySetStorage, sizeof(fmtid)),
     "Got unexpected FMTID, expected IID_IPropertySetStorage\n");
    }
}