
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 scalar_t__ CallUIActivate_AfterShow ;
 scalar_t__ CallUIActivate_None ;
 int FALSE ;
 int HideUI ;
 scalar_t__ IOleDocumentView_UIActivate (int ,int ) ;
 int InPlaceUIWindow_SetActiveObject ;
 int OnUIDeactivate ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetActiveObject_null ;
 scalar_t__ call_UIActivate ;
 int ok (int,char*,scalar_t__) ;
 int view ;

__attribute__((used)) static void test_UIDeactivate(void)
{
    HRESULT hres;

    if(call_UIActivate == CallUIActivate_AfterShow) {
        SET_EXPECT(InPlaceUIWindow_SetActiveObject);
    }
    if(call_UIActivate != CallUIActivate_None) {
        SET_EXPECT(SetActiveObject_null);
        SET_EXPECT(HideUI);
        SET_EXPECT(OnUIDeactivate);
    }

    hres = IOleDocumentView_UIActivate(view, FALSE);
    ok(hres == S_OK, "UIActivate failed: %08x\n", hres);

    if(call_UIActivate != CallUIActivate_None) {
        CHECK_CALLED(SetActiveObject_null);
        CHECK_CALLED(HideUI);
        CHECK_CALLED(OnUIDeactivate);
    }
    if(call_UIActivate == CallUIActivate_AfterShow) {
        CHECK_CALLED(InPlaceUIWindow_SetActiveObject);
    }
}
