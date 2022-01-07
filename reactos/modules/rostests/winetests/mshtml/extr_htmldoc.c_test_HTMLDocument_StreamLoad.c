
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IOleObject ;
typedef int IHTMLDocument2 ;
typedef int IAdviseSink ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int AdviseSink ;
 int Advise_Close ;
 int CHECK_CALLED (int ) ;
 int CLIENTSITE_DONTSET ;
 int CLIENTSITE_EXPECTPATH ;
 int CLIENTSITE_SETNULL ;
 int CustomDocHostUIHandler ;
 int DWL_TRYCSS ;
 int DWL_VERBDONE ;
 int FALSE ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleObject ;
 int IOleDocumentView_Release (int *) ;
 scalar_t__ IOleObject_Advise (int *,int *,int *) ;
 int IOleObject_Release (int *) ;
 int LD_DOLOAD ;
 int OLECMDF_SUPPORTED ;
 int SET_EXPECT (int ) ;
 int S_FALSE ;
 scalar_t__ S_OK ;
 int TRUE ;
 int * create_document () ;
 int * doc_unk ;
 int init_test (int ) ;
 int load_from_stream ;
 int ok (int,char*,scalar_t__) ;
 int release_document (int *) ;
 int set_custom_uihandler (int *,int *) ;
 int test_ClientSite (int *,int) ;
 int test_Close (int *,int ) ;
 int test_ConnectionPointContainer (int *) ;
 int test_DoVerb (int *) ;
 int test_GetCurMoniker (int *,int *,int *,int ) ;
 int test_InPlaceDeactivate (int *,int ) ;
 int test_IsDirty (int *,int ) ;
 int test_MSHTML_QueryStatus (int *,int ) ;
 int test_QueryService (int *,int ) ;
 int test_StreamLoad (int *) ;
 int test_UIDeactivate () ;
 int test_ViewAdviseSink (int *) ;
 int test_download (int) ;
 int test_external (int *,int ) ;
 int test_readyState (int *) ;
 int trace (char*) ;
 int * view ;

__attribute__((used)) static void test_HTMLDocument_StreamLoad(void)
{
    IHTMLDocument2 *doc;
    IOleObject *oleobj;
    DWORD conn;
    HRESULT hres;

    trace("Testing HTMLDocument (IPersistStreamInit)...\n");

    init_test(LD_DOLOAD);
    load_from_stream = TRUE;

    doc = create_document();
    doc_unk = (IUnknown*)doc;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    ok(hres == S_OK, "Could not get IOleObject: %08x\n", hres);

    hres = IOleObject_Advise(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    ok(hres == S_OK, "Advise failed: %08x\n", hres);

    test_readyState((IUnknown*)doc);
    test_IsDirty(doc, S_FALSE);
    test_ViewAdviseSink(doc);
    test_ConnectionPointContainer(doc);
    test_QueryService(doc, FALSE);
    test_ClientSite(oleobj, CLIENTSITE_EXPECTPATH);
    test_QueryService(doc, TRUE);
    test_DoVerb(oleobj);
    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);

    test_GetCurMoniker((IUnknown*)doc, ((void*)0), ((void*)0), FALSE);
    test_StreamLoad(doc);
    test_download(DWL_VERBDONE|DWL_TRYCSS);
    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);

    test_UIDeactivate();
    test_InPlaceDeactivate(doc, TRUE);
    SET_EXPECT(Advise_Close);
    test_Close(doc, TRUE);
    CHECK_CALLED(Advise_Close);
    test_external(doc, FALSE);
    test_IsDirty(doc, S_FALSE);

    set_custom_uihandler(doc, &CustomDocHostUIHandler);
    test_ClientSite(oleobj, CLIENTSITE_SETNULL);
    test_external(doc, TRUE);
    test_ClientSite(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);
    test_external(doc, TRUE);
    set_custom_uihandler(doc, ((void*)0));
    test_ClientSite(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);

    IOleObject_Release(oleobj);
    if(view) {
        IOleDocumentView_Release(view);
        view = ((void*)0);
    }

    release_document(doc);
}
