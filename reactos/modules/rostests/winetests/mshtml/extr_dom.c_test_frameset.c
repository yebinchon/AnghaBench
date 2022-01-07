
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLWindow2 ;
typedef int IHTMLFramesCollection2 ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_get_frames (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 int IHTMLFramesCollection2_Release (int *) ;
 int IHTMLWindow2_Release (int *) ;
 scalar_t__ IHTMLWindow2_get_frames (int *,int **) ;
 scalar_t__ S_OK ;
 int * get_doc_elem_by_id (int *,char*) ;
 int * get_doc_window (int *) ;
 int ok (int,char*,scalar_t__) ;
 int test_elem_id (int *,char*) ;
 int test_framebase (int *) ;
 int test_framebase_name (int *,char*) ;
 int test_framebase_put_name (int *,char*) ;
 int test_framebase_src (int *,char*) ;
 int test_frames_collection (int *,char*) ;

__attribute__((used)) static void test_frameset(IHTMLDocument2 *doc)
{
    IHTMLWindow2 *window;
    IHTMLFramesCollection2 *frames;
    IHTMLElement *elem;
    HRESULT hres;

    window = get_doc_window(doc);



    hres = IHTMLWindow2_get_frames(window, &frames);
    ok(hres == S_OK, "IHTMLWindow2_get_frames failed: 0x%08x\n", hres);
    if(FAILED(hres))
        return;

    test_frames_collection(frames, "fr1");
    IHTMLFramesCollection2_Release(frames);

    hres = IHTMLDocument2_get_frames(doc, &frames);
    ok(hres == S_OK, "IHTMLDocument2_get_frames failed: 0x%08x\n", hres);
    if(FAILED(hres))
        return;

    test_frames_collection(frames, "fr1");
    IHTMLFramesCollection2_Release(frames);


    test_frames_collection((IHTMLFramesCollection2*)window, "fr2");


    elem = get_doc_elem_by_id(doc, "nm1");
    test_elem_id((IUnknown*)elem, "fr1");

    test_framebase((IUnknown*)elem);
    test_framebase_name(elem, "nm1");
    test_framebase_put_name(elem, "frame name");
    test_framebase_put_name(elem, ((void*)0));
    test_framebase_put_name(elem, "nm1");
    test_framebase_src(elem, "about:blank");
    IHTMLElement_Release(elem);


    elem = get_doc_elem_by_id(doc, "fr3");
    test_framebase_name(elem, ((void*)0));
    test_framebase_put_name(elem, "frame name");
    test_framebase_put_name(elem, ((void*)0));
    IHTMLElement_Release(elem);

    IHTMLWindow2_Release(window);
}
