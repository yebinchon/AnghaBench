
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int IUnknown ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int IOleWindow ;
typedef int IOleInPlaceSite ;
typedef int IOleClientSite ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;


 int EXPECT_REF (int *,int) ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IOleClientSite ;
 int IID_IOleInPlaceSite ;
 int IID_IOleWindow ;
 int IID_IRichEditOle ;
 scalar_t__ IOleClientSite_QueryInterface (int *,int *,void**) ;
 int IOleClientSite_Release (int *) ;
 int IOleInPlaceSite_Release (int *) ;
 scalar_t__ IOleWindow_QueryInterface (int *,int *,void**) ;
 int IOleWindow_Release (int *) ;
 scalar_t__ IRichEditOle_GetClientSite (int *,int **) ;
 scalar_t__ S_OK ;
 int create_interfaces (int *,int **,int **,int *) ;
 scalar_t__ get_refcount (int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_GetClientSite(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0), *reOle1 = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  IOleClientSite *clientSite = ((void*)0), *clientSite1 = ((void*)0), *clientSite2 = ((void*)0);
  IOleWindow *oleWin = ((void*)0), *oleWin1 = ((void*)0);
  IOleInPlaceSite *olePlace = ((void*)0), *olePlace1 = ((void*)0);
  HRESULT hres;
  LONG refcount1, refcount2;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = IRichEditOle_GetClientSite(reOle, &clientSite);
  ok(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);
  EXPECT_REF(clientSite, 1);

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IRichEditOle, (void **)&reOle1);
  ok(hres == E_NOINTERFACE, "IOleClientSite_QueryInterface: %x\n", hres);

  hres = IRichEditOle_GetClientSite(reOle, &clientSite1);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(clientSite != clientSite1, "got %p, %p\n", clientSite, clientSite1);
  IOleClientSite_Release(clientSite1);

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleClientSite, (void **)&clientSite1);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  ok(clientSite == clientSite1, "Should not return a new pointer.\n");
  EXPECT_REF(clientSite, 2);


  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleWindow, (void **)&oleWin);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  refcount1 = get_refcount((IUnknown *)clientSite);
  refcount2 = get_refcount((IUnknown *)oleWin);
  ok(refcount1 == refcount2, "got wrong ref count.\n");

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleWindow, (void **)&oleWin1);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  ok(oleWin == oleWin1, "Should not return a new pointer.\n");
  refcount1 = get_refcount((IUnknown *)clientSite);
  refcount2 = get_refcount((IUnknown *)oleWin);
  ok(refcount1 == refcount2, "got wrong ref count.\n");

  hres = IOleWindow_QueryInterface(oleWin, &IID_IOleClientSite, (void **)&clientSite2);
  ok(hres == S_OK, "IOleWindow_QueryInterface: 0x%08x\n", hres);
  ok(clientSite2 == clientSite1, "got wrong pointer\n");


  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleInPlaceSite, (void **)&olePlace);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  refcount1 = get_refcount((IUnknown *)olePlace);
  refcount2 = get_refcount((IUnknown *)clientSite);
  ok(refcount1 == refcount2, "got wrong ref count.\n");

  hres = IOleClientSite_QueryInterface(clientSite, &IID_IOleInPlaceSite, (void **)&olePlace1);
  ok(hres == S_OK, "IOleClientSite_QueryInterface: 0x%08x\n", hres);
  ok(olePlace == olePlace1, "Should not return a new pointer.\n");
  IOleInPlaceSite_Release(olePlace1);

  hres = IOleWindow_QueryInterface(oleWin, &IID_IOleInPlaceSite, (void **)&olePlace1);
  ok(hres == S_OK, "IOleWindow_QueryInterface: 0x%08x\n", hres);
  refcount1 = get_refcount((IUnknown *)olePlace1);
  refcount2 = get_refcount((IUnknown *)oleWin);
  ok(refcount1 == refcount2, "got wrong ref count.\n");

  IOleInPlaceSite_Release(olePlace1);
  IOleInPlaceSite_Release(olePlace);
  IOleWindow_Release(oleWin1);
  IOleWindow_Release(oleWin);
  IOleClientSite_Release(clientSite2);
  IOleClientSite_Release(clientSite1);
  IOleClientSite_Release(clientSite);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
}
