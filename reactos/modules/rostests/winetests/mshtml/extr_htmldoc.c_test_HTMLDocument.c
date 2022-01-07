
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ BOOL ;


 int CLIENTSITE_EXPECTPATH ;
 int CLIENTSITE_SETNULL ;
 int CallUIActivate_AfterShow ;
 int CallUIActivate_None ;
 int CustomDocHostUIHandler ;
 int DWL_CSS ;
 int DWL_TRYCSS ;
 int FALSE ;
 int IOleDocumentView_Release (int *) ;
 int IsWindow (int ) ;
 int LD_DOLOAD ;
 int LD_NO ;
 int Moniker ;
 int OLECMDF_SUPPORTED ;
 int S_FALSE ;
 int TRUE ;
 int call_UIActivate ;
 int * create_document () ;
 int doc_hwnd ;
 int * doc_unk ;
 int init_test (int ) ;
 int ok (int,char*) ;
 int release_document (int *) ;
 scalar_t__ report_mime ;
 int set_custom_uihandler (int *,int *) ;
 int test_Activate (int *,int ) ;
 int test_Advise (int *) ;
 int test_Close (int *,int ) ;
 int test_CloseView () ;
 int test_ConnectionPointContainer (int *) ;
 int test_GetCurMoniker (int *,int *,int *,int ) ;
 int test_Hide () ;
 int test_InPlaceDeactivate (int *,int ) ;
 int test_IsDirty (int *,int ) ;
 int test_MSHTML_QueryStatus (int *,int ) ;
 int test_OleCommandTarget (int *) ;
 int test_OleCommandTarget_fail (int *) ;
 int test_OnAmbientPropertyChange (int *) ;
 int test_OnAmbientPropertyChange2 (int *) ;
 int test_Persist (int *,int *) ;
 int test_QueryInterface (int *) ;
 int test_UIDeactivate () ;
 int test_ViewAdviseSink (int *) ;
 int test_Window (int *,int ) ;
 int test_download (int) ;
 int test_elem_from_point (int *) ;
 int test_exec_optical_zoom (int *,int) ;
 int test_external (int *,int ) ;
 int test_target_container (int *) ;
 int trace (char*,char*,char*) ;
 int * view ;

__attribute__((used)) static void test_HTMLDocument(BOOL do_load, BOOL mime)
{
    IHTMLDocument2 *doc;

    trace("Testing HTMLDocument (%s, %s)...\n", (do_load ? "load" : "no load"),
            (report_mime ? "mime" : "no mime"));

    init_test(do_load ? LD_DOLOAD : LD_NO);
    report_mime = mime;

    doc = create_document();
    doc_unk = (IUnknown*)doc;

    test_QueryInterface(doc);
    test_Advise(doc);
    test_IsDirty(doc, S_FALSE);
    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);
    test_external(doc, FALSE);
    test_ViewAdviseSink(doc);
    test_ConnectionPointContainer(doc);
    test_GetCurMoniker((IUnknown*)doc, ((void*)0), ((void*)0), FALSE);
    test_Persist(doc, &Moniker);
    if(!do_load)
        test_OnAmbientPropertyChange2(doc);

    test_Activate(doc, CLIENTSITE_EXPECTPATH);

    if(do_load) {
        set_custom_uihandler(doc, &CustomDocHostUIHandler);
        test_download(DWL_CSS|DWL_TRYCSS);
        test_GetCurMoniker((IUnknown*)doc, &Moniker, ((void*)0), FALSE);
        test_elem_from_point(doc);
    }

    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);
    test_OleCommandTarget_fail(doc);
    test_OleCommandTarget(doc);
    test_exec_optical_zoom(doc, 200);
    test_exec_optical_zoom(doc, 100);
    test_OnAmbientPropertyChange(doc);
    test_Window(doc, TRUE);
    test_external(doc, TRUE);
    test_target_container(doc);

    test_UIDeactivate();
    test_OleCommandTarget(doc);
    test_Window(doc, TRUE);
    test_InPlaceDeactivate(doc, TRUE);




    test_Window(doc, FALSE);
    test_Hide();
    test_InPlaceDeactivate(doc, FALSE);
    test_CloseView();
    test_Close(doc, FALSE);


    test_Activate(doc, CLIENTSITE_SETNULL);
    test_Window(doc, TRUE);
    test_OleCommandTarget(doc);
    test_UIDeactivate();
    test_InPlaceDeactivate(doc, TRUE);
    test_Close(doc, FALSE);


    call_UIActivate = CallUIActivate_None;
    test_Activate(doc, CLIENTSITE_SETNULL);
    test_Window(doc, TRUE);

    test_external(doc, TRUE);
    set_custom_uihandler(doc, ((void*)0));
    test_external(doc, FALSE);

    test_UIDeactivate();
    test_InPlaceDeactivate(doc, TRUE);
    test_CloseView();
    test_CloseView();
    test_Close(doc, TRUE);
    test_OnAmbientPropertyChange2(doc);
    test_GetCurMoniker((IUnknown*)doc, do_load ? &Moniker : ((void*)0), ((void*)0), FALSE);

    if(!do_load) {

        call_UIActivate = CallUIActivate_AfterShow;
        test_Activate(doc, 0);
        test_Window(doc, TRUE);
        test_OleCommandTarget(doc);
        test_UIDeactivate();
        test_InPlaceDeactivate(doc, TRUE);
        test_Close(doc, FALSE);
        call_UIActivate = CallUIActivate_None;
    }

    if(view)
        IOleDocumentView_Release(view);
    view = ((void*)0);

    ok(IsWindow(doc_hwnd), "hwnd is destroyed\n");
    release_document(doc);
    ok(!IsWindow(doc_hwnd), "hwnd is not destroyed\n");
}
