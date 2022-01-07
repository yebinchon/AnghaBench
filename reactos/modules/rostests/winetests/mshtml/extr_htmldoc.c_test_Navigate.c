
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHlinkTarget ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int ActivateMe ;
 int CHECK_CALLED (int ) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 scalar_t__ IHlinkTarget_Navigate (int *,int ,int *) ;
 int IHlinkTarget_Release (int *) ;
 int IID_IHlinkTarget ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_Navigate(IHTMLDocument2 *doc)
{
    IHlinkTarget *hlink;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHlinkTarget, (void**)&hlink);
    ok(hres == S_OK, "QueryInterface(IID_IHlinkTarget) failed: %08x\n", hres);

    SET_EXPECT(ActivateMe);
    hres = IHlinkTarget_Navigate(hlink, 0, ((void*)0));
    ok(hres == S_OK, "Navigate failed: %08x\n", hres);
    CHECK_CALLED(ActivateMe);

    IHlinkTarget_Release(hlink);
}
