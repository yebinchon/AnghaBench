
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleObject ;
typedef int IHlinkTarget ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int ClientSite ;
 int FALSE ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 scalar_t__ IHlinkTarget_Navigate (int *,int ,int *) ;
 int IHlinkTarget_Release (int *) ;
 int IID_IHlinkTarget ;
 int IID_IOleObject ;
 int IOleDocumentView_CloseView (int *,int ) ;
 int IOleDocumentView_Release (int *) ;
 int IOleDocumentView_SetInPlaceSite (int *,int *) ;
 int IOleDocumentView_Show (int *,int ) ;
 scalar_t__ IOleObject_QueryInterface (int *,int *,void**) ;
 int IOleObject_Release (int *) ;
 scalar_t__ IOleObject_SetClientSite (int *,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int * view ;

__attribute__((used)) static void set_client_site(IHTMLDocument2 *doc, BOOL set)
{
    IOleObject *oleobj;
    HRESULT hres;

    if(!set && view) {
        IOleDocumentView_Show(view, FALSE);
        IOleDocumentView_CloseView(view, 0);
        IOleDocumentView_SetInPlaceSite(view, ((void*)0));
        IOleDocumentView_Release(view);
        view = ((void*)0);
    }

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    ok(hres == S_OK, "Could not et IOleObject: %08x\n", hres);

    hres = IOleObject_SetClientSite(oleobj, set ? &ClientSite : ((void*)0));
    ok(hres == S_OK, "SetClientSite failed: %08x\n", hres);

    if(set) {
        IHlinkTarget *hlink;

        hres = IOleObject_QueryInterface(oleobj, &IID_IHlinkTarget, (void**)&hlink);
        ok(hres == S_OK, "Could not get IHlinkTarget iface: %08x\n", hres);

        hres = IHlinkTarget_Navigate(hlink, 0, ((void*)0));
        ok(hres == S_OK, "Navgate failed: %08x\n", hres);

        IHlinkTarget_Release(hlink);
    }

    IOleObject_Release(oleobj);
}
