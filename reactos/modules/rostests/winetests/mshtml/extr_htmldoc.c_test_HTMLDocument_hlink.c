
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef int DWORD ;


 int CustomDocHostUIHandler ;
 int DWL_CSS ;
 int DWL_TRYCSS ;
 int FALSE ;
 int HTTP_STATUS_OK ;
 int IOleDocumentView_Release (int *) ;
 int LD_DOLOAD ;
 int Moniker ;
 int OLECMDF_SUPPORTED ;
 int S_FALSE ;
 int TRUE ;
 int * create_document () ;
 int * doc_unk ;
 int init_test (int ) ;
 int ipsex ;
 int release_document (int *) ;
 int set_custom_uihandler (int *,int *) ;
 int status_code ;
 int test_Close (int *,int ) ;
 int test_ConnectionPointContainer (int *) ;
 int test_GetCurMoniker (int *,int *,int *,int ) ;
 int test_InPlaceDeactivate (int *,int ) ;
 int test_IsDirty (int *,int ) ;
 int test_MSHTML_QueryStatus (int *,int ) ;
 int test_Navigate (int *) ;
 int test_Persist (int *,int *) ;
 int test_ViewAdviseSink (int *) ;
 int test_Window (int *,int ) ;
 int test_clear (int *) ;
 int test_download (int) ;
 int test_exec_onunload (int *) ;
 int trace (char*) ;
 int * view ;

__attribute__((used)) static void test_HTMLDocument_hlink(DWORD status)
{
    IHTMLDocument2 *doc;

    trace("Testing HTMLDocument (hlink)...\n");

    init_test(LD_DOLOAD);
    ipsex = TRUE;

    doc = create_document();
    doc_unk = (IUnknown*)doc;

    set_custom_uihandler(doc, &CustomDocHostUIHandler);
    test_ViewAdviseSink(doc);
    test_ConnectionPointContainer(doc);
    test_GetCurMoniker((IUnknown*)doc, ((void*)0), ((void*)0), FALSE);
    test_Persist(doc, &Moniker);
    test_Navigate(doc);

    status_code = status;
    test_download(DWL_CSS|DWL_TRYCSS);
    status_code = HTTP_STATUS_OK;

    test_IsDirty(doc, S_FALSE);
    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);

    test_exec_onunload(doc);
    test_Window(doc, TRUE);
    test_InPlaceDeactivate(doc, TRUE);
    test_Close(doc, FALSE);
    test_IsDirty(doc, S_FALSE);
    test_GetCurMoniker((IUnknown*)doc, &Moniker, ((void*)0), FALSE);
    test_clear(doc);
    test_GetCurMoniker((IUnknown*)doc, &Moniker, ((void*)0), FALSE);

    if(view)
        IOleDocumentView_Release(view);
    view = ((void*)0);

    release_document(doc);
}
