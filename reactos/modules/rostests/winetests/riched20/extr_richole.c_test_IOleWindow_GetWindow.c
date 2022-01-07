
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int IOleWindow ;
typedef int IOleClientSite ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int IID_IOleWindow ;
 scalar_t__ IOleClientSite_QueryInterface (int *,int *,void**) ;
 int IOleClientSite_Release (int *) ;
 scalar_t__ IOleWindow_GetWindow (int *,scalar_t__*) ;
 int IOleWindow_Release (int *) ;
 scalar_t__ IRichEditOle_GetClientSite (int *,int **) ;
 scalar_t__ S_OK ;
 int create_interfaces (scalar_t__*,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (scalar_t__*,int **,int **,int *) ;

__attribute__((used)) static void test_IOleWindow_GetWindow(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  IOleClientSite *clientSite = ((void*)0);
  IOleWindow *oleWin = ((void*)0);
  HRESULT hres;
  HWND hwnd;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = IRichEditOle_GetClientSite(reOle, &clientSite);
  ok(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleWindow, (void **)&oleWin);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  hres = IOleWindow_GetWindow(oleWin, &hwnd);
  ok(hres == S_OK, "IOleClientSite_GetWindow: 0x%08x\n", hres);
  ok(w == hwnd, "got wrong pointer\n");

  hres = IOleWindow_GetWindow(oleWin, ((void*)0));
  ok(hres == E_INVALIDARG, "IOleClientSite_GetWindow: 0x%08x\n", hres);

  IOleWindow_Release(oleWin);
  IOleClientSite_Release(clientSite);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
}
