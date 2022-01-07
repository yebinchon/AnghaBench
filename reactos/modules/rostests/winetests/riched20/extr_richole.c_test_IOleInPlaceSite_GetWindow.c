
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int IOleInPlaceSite ;
typedef int IOleClientSite ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int IID_IOleInPlaceSite ;
 scalar_t__ IOleClientSite_QueryInterface (int *,int *,void**) ;
 int IOleClientSite_Release (int *) ;
 scalar_t__ IOleInPlaceSite_GetWindow (int *,scalar_t__*) ;
 int IOleInPlaceSite_Release (int *) ;
 scalar_t__ IRichEditOle_GetClientSite (int *,int **) ;
 scalar_t__ S_OK ;
 int create_interfaces (scalar_t__*,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (scalar_t__*,int **,int **,int *) ;

__attribute__((used)) static void test_IOleInPlaceSite_GetWindow(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  IOleClientSite *clientSite = ((void*)0);
  IOleInPlaceSite *olePlace = ((void*)0);
  HRESULT hres;
  HWND hwnd;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = IRichEditOle_GetClientSite(reOle, &clientSite);
  ok(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleInPlaceSite, (void **)&olePlace);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  hres = IOleInPlaceSite_GetWindow(olePlace, &hwnd);
  ok(hres == S_OK, "IOleInPlaceSite_GetWindow: 0x%08x\n", hres);
  ok(w == hwnd, "got wrong pointer.\n");

  hres = IOleInPlaceSite_GetWindow(olePlace, ((void*)0));
  ok(hres == E_INVALIDARG, "IOleInPlaceSite_GetWindow: 0x%08x\n", hres);

  IOleInPlaceSite_Release(olePlace);
  IOleClientSite_Release(clientSite);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
}
