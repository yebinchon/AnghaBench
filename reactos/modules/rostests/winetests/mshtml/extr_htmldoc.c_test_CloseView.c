
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleInPlaceSite ;
typedef scalar_t__ HRESULT ;


 int FALSE ;
 scalar_t__ IOleDocumentView_CloseView (int ,int ) ;
 scalar_t__ IOleDocumentView_GetInPlaceSite (int ,int **) ;
 scalar_t__ IOleDocumentView_SetInPlaceSite (int ,int *) ;
 scalar_t__ IOleDocumentView_Show (int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int view ;

__attribute__((used)) static void test_CloseView(void)
{
    IOleInPlaceSite *inplacesite = (IOleInPlaceSite*)0xff00ff00;
    HRESULT hres;

    if(!view)
        return;

    hres = IOleDocumentView_Show(view, FALSE);
    ok(hres == S_OK, "Show failed: %08x\n", hres);

    hres = IOleDocumentView_CloseView(view, 0);
    ok(hres == S_OK, "CloseView failed: %08x\n", hres);

    hres = IOleDocumentView_SetInPlaceSite(view, ((void*)0));
    ok(hres == S_OK, "SetInPlaceSite failed: %08x\n", hres);

    hres = IOleDocumentView_GetInPlaceSite(view, &inplacesite);
    ok(hres == S_OK, "SetInPlaceSite failed: %08x\n", hres);
    ok(inplacesite == ((void*)0), "inplacesite=%p, expected NULL\n", inplacesite);
}
