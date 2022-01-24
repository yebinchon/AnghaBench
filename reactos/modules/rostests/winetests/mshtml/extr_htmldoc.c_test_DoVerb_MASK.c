#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_2; int member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActivateMe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ClientSite ; 
 int /*<<< orphan*/  GetContainer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LockContainer ; 
 int /*<<< orphan*/  OLEIVERB_SHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 void* TRUE ; 
 int /*<<< orphan*/  container_hwnd ; 
 void* container_locked ; 
 void* expect_LockContainer_fLock ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IOleObject *oleobj)
{
    RECT rect = {0,0,500,500};
    HRESULT hres;

    if(!container_locked) {
        FUNC2(GetContainer);
        FUNC2(LockContainer);
    }
    FUNC2(ActivateMe);
    expect_LockContainer_fLock = TRUE;

    hres = FUNC1(oleobj, OLEIVERB_SHOW, NULL, &ClientSite, -1, container_hwnd, &rect);
    FUNC3(hres == S_OK, "DoVerb failed: %08x\n", hres);

    if(!container_locked) {
        FUNC0(GetContainer);
        FUNC0(LockContainer);
        container_locked = TRUE;
    }
    FUNC0(ActivateMe);
}