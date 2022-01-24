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
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  IOleWindow ;
typedef  int /*<<< orphan*/  IOleClientSite ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  IOleClientSite *clientSite = NULL;
  IOleWindow *oleWin = NULL;
  HRESULT hres;
  HWND hwnd;

  FUNC5(&w, &reOle, &txtDoc, NULL);
  hres = FUNC4(reOle, &clientSite);
  FUNC6(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);

  hres = FUNC0(clientSite, &IID_IOleWindow, (void **)&oleWin);
  FUNC6(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  hres = FUNC2(oleWin, &hwnd);
  FUNC6(hres == S_OK, "IOleClientSite_GetWindow: 0x%08x\n", hres);
  FUNC6(w == hwnd, "got wrong pointer\n");

  hres = FUNC2(oleWin, NULL);
  FUNC6(hres == E_INVALIDARG, "IOleClientSite_GetWindow: 0x%08x\n", hres);

  FUNC3(oleWin);
  FUNC1(clientSite);
  FUNC7(&w, &reOle, &txtDoc, NULL);
}