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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  int /*<<< orphan*/  ITfContext ;
typedef  int /*<<< orphan*/  ITfCompartmentMgr ;
typedef  int /*<<< orphan*/  ITfCompartment ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  GUID_COMPARTMENT_PERSISTMENUENABLED ; 
 int /*<<< orphan*/  GUID_COMPARTMENT_SPEECH_OPENCLOSE ; 
 int /*<<< orphan*/  IID_ITfCompartmentMgr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tid ; 

__attribute__((used)) static void FUNC15(void)
{
    ITfContext *cxt;
    ITfDocumentMgr *dm;
    ITfCompartmentMgr *cmpmgr;
    ITfCompartment *cmp;
    HRESULT hr;

    FUNC9(g_tm, &dm);
    FUNC6(dm,&cxt);

    /* Global */
    hr = FUNC10(g_tm, &cmpmgr);
    FUNC14(FUNC12(hr),"GetGlobalCompartment failed\n");
    hr = FUNC1(cmpmgr, &GUID_COMPARTMENT_SPEECH_OPENCLOSE, &cmp);
    FUNC14(FUNC12(hr),"GetCompartment failed\n");
    FUNC3(cmp);
    FUNC13(cmpmgr,&GUID_COMPARTMENT_SPEECH_OPENCLOSE,NULL);
    FUNC2(cmpmgr);

    /* Thread */
    hr = FUNC11(g_tm, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    FUNC14(FUNC12(hr),"ThreadMgr QI for IID_ITfCompartmentMgr failed\n");
    hr = FUNC1(cmpmgr, &CLSID_FakeService, &cmp);
    FUNC14(FUNC12(hr),"GetCompartment failed\n");
    FUNC13(cmpmgr,&CLSID_FakeService,&GUID_COMPARTMENT_SPEECH_OPENCLOSE);
    FUNC0(cmpmgr,tid,&CLSID_FakeService);
    FUNC13(cmpmgr,NULL,&CLSID_FakeService);
    FUNC2(cmpmgr);
    FUNC3(cmp);

    /* DocumentMgr */
    hr = FUNC7(dm, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    FUNC14(FUNC12(hr),"DocumentMgr QI for IID_ITfCompartmentMgr failed\n");

    hr = FUNC1(cmpmgr, &GUID_COMPARTMENT_PERSISTMENUENABLED, &cmp);
    FUNC14(FUNC12(hr),"GetCompartment failed\n");
    FUNC13(cmpmgr,&GUID_COMPARTMENT_PERSISTMENUENABLED,&GUID_COMPARTMENT_SPEECH_OPENCLOSE);
    FUNC2(cmpmgr);

    /* Context */
    hr = FUNC4(cxt, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    FUNC14(FUNC12(hr),"Context QI for IID_ITfCompartmentMgr failed\n");
    FUNC13(cmpmgr,NULL,&GUID_COMPARTMENT_PERSISTMENUENABLED);
    FUNC2(cmpmgr);

    FUNC5(cxt);
    FUNC8(dm);
}