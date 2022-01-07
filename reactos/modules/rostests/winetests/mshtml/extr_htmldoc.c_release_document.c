
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void release_document(IHTMLDocument2 *doc)
{
    IUnknown *unk;
    ULONG ref;
    HRESULT hres;



    hres = IHTMLDocument2_QueryInterface(doc, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "Could not get IUnknown iface: %08x\n", hres);

    IHTMLDocument2_Release(doc);
    ref = IUnknown_Release(unk);
    ok(!ref, "ref = %d\n", ref);
}
