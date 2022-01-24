#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IOleDocumentView ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IOleDocumentView ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  InPlaceFrame_SetBorderSpace ; 
 int /*<<< orphan*/  InPlaceUIWindow_SetActiveObject ; 
 int /*<<< orphan*/  OnFocus_TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetActiveObject ; 
 int /*<<< orphan*/  ShowUI ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * expect_status_text ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(IOleObject *oleobj)
{
    IOleDocumentView *docview;
    HRESULT hres;

    hres = FUNC3(oleobj, &IID_IOleDocumentView, (void **)&docview);
    FUNC5(hres == S_OK, "IOleObject_QueryInterface failed with error 0x%08x\n", hres);

    FUNC4(OnFocus_TRUE);
    FUNC4(SetActiveObject);
    FUNC4(ShowUI);
    FUNC4(InPlaceUIWindow_SetActiveObject);
    FUNC4(InPlaceFrame_SetBorderSpace);
    expect_status_text = NULL;

    hres = FUNC2(docview, TRUE);
    FUNC5(hres == S_OK, "IOleDocumentView_UIActivate failed with error 0x%08x\n", hres);

    FUNC0(OnFocus_TRUE);
    FUNC0(SetActiveObject);
    FUNC0(ShowUI);
    FUNC0(InPlaceUIWindow_SetActiveObject);
    FUNC0(InPlaceFrame_SetBorderSpace);

    FUNC1(docview);
}