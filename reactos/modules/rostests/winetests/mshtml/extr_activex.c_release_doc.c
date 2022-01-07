
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IHTMLDocument2 ;


 int DestroyWindow (int *) ;
 int FALSE ;
 int IHTMLDocument2_Release (int *) ;
 int IOleClientSite_Release (int *) ;
 int activex_refcnt ;
 scalar_t__ broken (int) ;
 int * client_site ;
 int ok (int,char*,int) ;
 int * plugin_hwnd ;
 int set_client_site (int *,int ) ;

__attribute__((used)) static void release_doc(IHTMLDocument2 *doc)
{
    ULONG ref;

    set_client_site(doc, FALSE);
    ref = IHTMLDocument2_Release(doc);
    ok(!ref || broken(ref == 1) , "ref = %d\n", ref);

    if(client_site) {
        IOleClientSite_Release(client_site);
        client_site = ((void*)0);
    }

    if(plugin_hwnd) {
        DestroyWindow(plugin_hwnd);
        plugin_hwnd = ((void*)0);
    }

    ok(!activex_refcnt, "activex_refcnt = %d\n", activex_refcnt);
}
