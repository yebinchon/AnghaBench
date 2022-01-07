
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPersistStreamInit ;
typedef int IPersistMoniker ;
typedef int IPersistFile ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IPersistFile ;
 int IID_IPersistMoniker ;
 int IID_IPersistStreamInit ;
 scalar_t__ IPersistFile_IsDirty (int *) ;
 int IPersistFile_Release (int *) ;
 scalar_t__ IPersistMoniker_IsDirty (int *) ;
 int IPersistMoniker_Release (int *) ;
 scalar_t__ IPersistStreamInit_IsDirty (int *) ;
 int IPersistStreamInit_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_IsDirty(IHTMLDocument2 *doc, HRESULT exhres)
{
    IPersistStreamInit *perinit;
    IPersistMoniker *permon;
    IPersistFile *perfile;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistStreamInit, (void**)&perinit);
    ok(hres == S_OK, "QueryInterface(IID_IPersistStreamInit failed: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        hres = IPersistStreamInit_IsDirty(perinit);
        ok(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        IPersistStreamInit_Release(perinit);
    }

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistMoniker, (void**)&permon);
    ok(hres == S_OK, "QueryInterface(IID_IPersistMoniker failed: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        hres = IPersistMoniker_IsDirty(permon);
        ok(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        IPersistMoniker_Release(permon);
    }

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistFile, (void**)&perfile);
    ok(hres == S_OK, "QueryInterface(IID_IPersistFile failed: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        hres = IPersistFile_IsDirty(perfile);
        ok(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        IPersistFile_Release(perfile);
    }
}
