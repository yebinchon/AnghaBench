
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int CHECK_CALLED (int ) ;
 int GetExternal ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 int IHTMLWindow2_Release (int *) ;
 scalar_t__ IHTMLWindow2_get_external (int *,int **) ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_external(IHTMLDocument2 *doc, BOOL initialized)
{
    IDispatch *external;
    IHTMLWindow2 *htmlwin;
    HRESULT hres;

    hres = IHTMLDocument2_get_parentWindow(doc, &htmlwin);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    if(initialized)
        SET_EXPECT(GetExternal);
    external = (void*)0xdeadbeef;
    hres = IHTMLWindow2_get_external(htmlwin, &external);
    if(initialized) {
        ok(hres == S_FALSE || hres == S_OK, "get_external failed: %08x\n", hres);
        CHECK_CALLED(GetExternal);
        ok(external != ((void*)0), "external == NULL\n");
    }else {
        ok(hres == S_OK, "get_external failed: %08x\n", hres);
        ok(external == ((void*)0), "external != NULL\n");
    }

    IHTMLWindow2_Release(htmlwin);
}
