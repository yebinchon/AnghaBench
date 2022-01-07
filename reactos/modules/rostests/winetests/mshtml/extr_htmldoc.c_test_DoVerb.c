
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int IOleObject ;
typedef scalar_t__ HRESULT ;


 int ActivateMe ;
 int CHECK_CALLED (int ) ;
 int ClientSite ;
 int GetContainer ;
 scalar_t__ IOleObject_DoVerb (int *,int ,int *,int *,int,int ,TYPE_1__*) ;
 int LockContainer ;
 int OLEIVERB_SHOW ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 void* TRUE ;
 int container_hwnd ;
 void* container_locked ;
 void* expect_LockContainer_fLock ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_DoVerb(IOleObject *oleobj)
{
    RECT rect = {0,0,500,500};
    HRESULT hres;

    if(!container_locked) {
        SET_EXPECT(GetContainer);
        SET_EXPECT(LockContainer);
    }
    SET_EXPECT(ActivateMe);
    expect_LockContainer_fLock = TRUE;

    hres = IOleObject_DoVerb(oleobj, OLEIVERB_SHOW, ((void*)0), &ClientSite, -1, container_hwnd, &rect);
    ok(hres == S_OK, "DoVerb failed: %08x\n", hres);

    if(!container_locked) {
        CHECK_CALLED(GetContainer);
        CHECK_CALLED(LockContainer);
        container_locked = TRUE;
    }
    CHECK_CALLED(ActivateMe);
}
