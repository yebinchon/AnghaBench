
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IPersistStreamInit ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IPersistStreamInit ;
 scalar_t__ IPersistStreamInit_InitNew (int *) ;
 int IPersistStreamInit_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int resetting_document ;
 int test_GetCurMoniker (int *,int *,char*,int ) ;

__attribute__((used)) static void reset_document(IHTMLDocument2 *doc)
{
    IPersistStreamInit *init;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistStreamInit, (void**)&init);
    ok(hres == S_OK, "QueryInterface(IID_IPersistStreamInit) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    resetting_document = TRUE;

    hres = IPersistStreamInit_InitNew(init);
    ok(hres == S_OK, "Load failed: %08x\n", hres);

    resetting_document = FALSE;

    test_GetCurMoniker((IUnknown*)doc, ((void*)0), "about:blank", FALSE);

    IPersistStreamInit_Release(init);
}
