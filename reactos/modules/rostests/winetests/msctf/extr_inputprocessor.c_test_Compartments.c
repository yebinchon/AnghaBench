
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int ITfDocumentMgr ;
typedef int ITfContext ;
typedef int ITfCompartmentMgr ;
typedef int ITfCompartment ;
typedef int HRESULT ;


 int CLSID_FakeService ;
 int GUID_COMPARTMENT_PERSISTMENUENABLED ;
 int GUID_COMPARTMENT_SPEECH_OPENCLOSE ;
 int IID_ITfCompartmentMgr ;
 int ITfCompartmentMgr_ClearCompartment (int *,int ,int *) ;
 int ITfCompartmentMgr_GetCompartment (int *,int *,int **) ;
 int ITfCompartmentMgr_Release (int *) ;
 int ITfCompartment_Release (int *) ;
 int ITfContext_QueryInterface (int *,int *,int *) ;
 int ITfContext_Release (int *) ;
 int ITfDocumentMgr_GetTop (int *,int **) ;
 int ITfDocumentMgr_QueryInterface (int *,int *,int *) ;
 int ITfDocumentMgr_Release (int *) ;
 int ITfThreadMgr_GetFocus (int ,int **) ;
 int ITfThreadMgr_GetGlobalCompartment (int ,int **) ;
 int ITfThreadMgr_QueryInterface (int ,int *,int *) ;
 int SUCCEEDED (int ) ;
 int enum_compartments (int *,int *,int *) ;
 int g_tm ;
 int ok (int ,char*) ;
 int tid ;

__attribute__((used)) static void test_Compartments(void)
{
    ITfContext *cxt;
    ITfDocumentMgr *dm;
    ITfCompartmentMgr *cmpmgr;
    ITfCompartment *cmp;
    HRESULT hr;

    ITfThreadMgr_GetFocus(g_tm, &dm);
    ITfDocumentMgr_GetTop(dm,&cxt);


    hr = ITfThreadMgr_GetGlobalCompartment(g_tm, &cmpmgr);
    ok(SUCCEEDED(hr),"GetGlobalCompartment failed\n");
    hr = ITfCompartmentMgr_GetCompartment(cmpmgr, &GUID_COMPARTMENT_SPEECH_OPENCLOSE, &cmp);
    ok(SUCCEEDED(hr),"GetCompartment failed\n");
    ITfCompartment_Release(cmp);
    enum_compartments(cmpmgr,&GUID_COMPARTMENT_SPEECH_OPENCLOSE,((void*)0));
    ITfCompartmentMgr_Release(cmpmgr);


    hr = ITfThreadMgr_QueryInterface(g_tm, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    ok(SUCCEEDED(hr),"ThreadMgr QI for IID_ITfCompartmentMgr failed\n");
    hr = ITfCompartmentMgr_GetCompartment(cmpmgr, &CLSID_FakeService, &cmp);
    ok(SUCCEEDED(hr),"GetCompartment failed\n");
    enum_compartments(cmpmgr,&CLSID_FakeService,&GUID_COMPARTMENT_SPEECH_OPENCLOSE);
    ITfCompartmentMgr_ClearCompartment(cmpmgr,tid,&CLSID_FakeService);
    enum_compartments(cmpmgr,((void*)0),&CLSID_FakeService);
    ITfCompartmentMgr_Release(cmpmgr);
    ITfCompartment_Release(cmp);


    hr = ITfDocumentMgr_QueryInterface(dm, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    ok(SUCCEEDED(hr),"DocumentMgr QI for IID_ITfCompartmentMgr failed\n");

    hr = ITfCompartmentMgr_GetCompartment(cmpmgr, &GUID_COMPARTMENT_PERSISTMENUENABLED, &cmp);
    ok(SUCCEEDED(hr),"GetCompartment failed\n");
    enum_compartments(cmpmgr,&GUID_COMPARTMENT_PERSISTMENUENABLED,&GUID_COMPARTMENT_SPEECH_OPENCLOSE);
    ITfCompartmentMgr_Release(cmpmgr);


    hr = ITfContext_QueryInterface(cxt, &IID_ITfCompartmentMgr, (LPVOID*)&cmpmgr);
    ok(SUCCEEDED(hr),"Context QI for IID_ITfCompartmentMgr failed\n");
    enum_compartments(cmpmgr,((void*)0),&GUID_COMPARTMENT_PERSISTMENUENABLED);
    ITfCompartmentMgr_Release(cmpmgr);

    ITfContext_Release(cxt);
    ITfDocumentMgr_Release(dm);
}
