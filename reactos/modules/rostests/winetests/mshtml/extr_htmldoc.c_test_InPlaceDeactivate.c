
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleInPlaceObjectWindowless ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleInPlaceObjectWindowless ;
 scalar_t__ IOleInPlaceObjectWindowless_InPlaceDeactivate (int *) ;
 int IOleInPlaceObjectWindowless_Release (int *) ;
 int OnFocus_FALSE ;
 int OnInPlaceDeactivate ;
 int OnInPlaceDeactivateEx ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetStatusText ;
 scalar_t__ ipsex ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_InPlaceDeactivate(IHTMLDocument2 *doc, BOOL expect_call)
{
    IOleInPlaceObjectWindowless *windowlessobj = ((void*)0);
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleInPlaceObjectWindowless,
            (void**)&windowlessobj);
    ok(hres == S_OK, "QueryInterface(IID_IOleInPlaceObjectWindowless) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    if(expect_call) {
        SET_EXPECT(SetStatusText);
        SET_EXPECT(OnFocus_FALSE);
        if(ipsex)
            SET_EXPECT(OnInPlaceDeactivateEx);
        else
            SET_EXPECT(OnInPlaceDeactivate);
    }
    hres = IOleInPlaceObjectWindowless_InPlaceDeactivate(windowlessobj);
    ok(hres == S_OK, "InPlaceDeactivate failed: %08x\n", hres);
    if(expect_call) {
        CLEAR_CALLED(SetStatusText);
        CHECK_CALLED(OnFocus_FALSE);
        if(ipsex)
            CHECK_CALLED(OnInPlaceDeactivateEx);
        else
            CHECK_CALLED(OnInPlaceDeactivate);
    }

    IOleInPlaceObjectWindowless_Release(windowlessobj);
}
