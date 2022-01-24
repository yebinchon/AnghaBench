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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  IOleWindow ;
typedef  int /*<<< orphan*/  IOleInPlaceSite ;
typedef  int /*<<< orphan*/  IOleClientSite ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IOleClientSite ; 
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_IRichEditOle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
  HWND w;
  IRichEditOle *reOle = NULL, *reOle1 = NULL;
  ITextDocument *txtDoc = NULL;
  IOleClientSite *clientSite = NULL, *clientSite1 = NULL, *clientSite2 = NULL;
  IOleWindow *oleWin = NULL, *oleWin1 = NULL;
  IOleInPlaceSite *olePlace = NULL, *olePlace1 = NULL;
  HRESULT hres;
  LONG refcount1, refcount2;

  FUNC7(&w, &reOle, &txtDoc, NULL);
  hres = FUNC6(reOle, &clientSite);
  FUNC9(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);
  FUNC0(clientSite, 1);

  hres = FUNC1(clientSite, &IID_IRichEditOle, (void **)&reOle1);
  FUNC9(hres == E_NOINTERFACE, "IOleClientSite_QueryInterface: %x\n", hres);

  hres = FUNC6(reOle, &clientSite1);
  FUNC9(hres == S_OK, "got 0x%08x\n", hres);
  FUNC9(clientSite != clientSite1, "got %p, %p\n", clientSite, clientSite1);
  FUNC2(clientSite1);

  hres = FUNC1(clientSite, &IID_IOleClientSite, (void **)&clientSite1);
  FUNC9(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  FUNC9(clientSite == clientSite1, "Should not return a new pointer.\n");
  FUNC0(clientSite, 2);

  /* IOleWindow interface */
  hres = FUNC1(clientSite, &IID_IOleWindow, (void **)&oleWin);
  FUNC9(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  refcount1 = FUNC8((IUnknown *)clientSite);
  refcount2 = FUNC8((IUnknown *)oleWin);
  FUNC9(refcount1 == refcount2, "got wrong ref count.\n");

  hres = FUNC1(clientSite, &IID_IOleWindow, (void **)&oleWin1);
  FUNC9(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  FUNC9(oleWin == oleWin1, "Should not return a new pointer.\n");
  refcount1 = FUNC8((IUnknown *)clientSite);
  refcount2 = FUNC8((IUnknown *)oleWin);
  FUNC9(refcount1 == refcount2, "got wrong ref count.\n");

  hres = FUNC4(oleWin, &IID_IOleClientSite, (void **)&clientSite2);
  FUNC9(hres == S_OK, "IOleWindow_QueryInterface: 0x%08x\n", hres);
  FUNC9(clientSite2 == clientSite1, "got wrong pointer\n");

  /* IOleInPlaceSite interface */
  hres = FUNC1(clientSite, &IID_IOleInPlaceSite, (void **)&olePlace);
  FUNC9(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  refcount1 = FUNC8((IUnknown *)olePlace);
  refcount2 = FUNC8((IUnknown *)clientSite);
  FUNC9(refcount1 == refcount2, "got wrong ref count.\n");

  hres = FUNC1(clientSite, &IID_IOleInPlaceSite, (void **)&olePlace1);
  FUNC9(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  FUNC9(olePlace == olePlace1, "Should not return a new pointer.\n");
  FUNC3(olePlace1);

  hres = FUNC4(oleWin, &IID_IOleInPlaceSite, (void **)&olePlace1);
  FUNC9(hres == S_OK, "IOleWindow_QueryInterface: 0x%08x\n", hres);
  refcount1 = FUNC8((IUnknown *)olePlace1);
  refcount2 = FUNC8((IUnknown *)oleWin);
  FUNC9(refcount1 == refcount2, "got wrong ref count.\n");

  FUNC3(olePlace1);
  FUNC3(olePlace);
  FUNC5(oleWin1);
  FUNC5(oleWin);
  FUNC2(clientSite2);
  FUNC2(clientSite1);
  FUNC2(clientSite);
  FUNC10(&w, &reOle, &txtDoc, NULL);
}