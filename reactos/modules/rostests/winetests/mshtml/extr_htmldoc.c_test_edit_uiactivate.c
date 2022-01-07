
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleObject ;
typedef int IOleDocumentView ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 int IID_IOleDocumentView ;
 int IOleDocumentView_Release (int *) ;
 scalar_t__ IOleDocumentView_UIActivate (int *,int ) ;
 scalar_t__ IOleObject_QueryInterface (int *,int *,void**) ;
 int InPlaceFrame_SetBorderSpace ;
 int InPlaceUIWindow_SetActiveObject ;
 int OnFocus_TRUE ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetActiveObject ;
 int ShowUI ;
 int TRUE ;
 int * expect_status_text ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_edit_uiactivate(IOleObject *oleobj)
{
    IOleDocumentView *docview;
    HRESULT hres;

    hres = IOleObject_QueryInterface(oleobj, &IID_IOleDocumentView, (void **)&docview);
    ok(hres == S_OK, "IOleObject_QueryInterface failed with error 0x%08x\n", hres);

    SET_EXPECT(OnFocus_TRUE);
    SET_EXPECT(SetActiveObject);
    SET_EXPECT(ShowUI);
    SET_EXPECT(InPlaceUIWindow_SetActiveObject);
    SET_EXPECT(InPlaceFrame_SetBorderSpace);
    expect_status_text = ((void*)0);

    hres = IOleDocumentView_UIActivate(docview, TRUE);
    ok(hres == S_OK, "IOleDocumentView_UIActivate failed with error 0x%08x\n", hres);

    CHECK_CALLED(OnFocus_TRUE);
    CHECK_CALLED(SetActiveObject);
    CHECK_CALLED(ShowUI);
    CHECK_CALLED(InPlaceUIWindow_SetActiveObject);
    CHECK_CALLED(InPlaceFrame_SetBorderSpace);

    IOleDocumentView_Release(docview);
}
