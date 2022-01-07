
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IMoniker ;
typedef int IHlink ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateFileMoniker (char const*,int **) ;
 int HLINKGETREF_RELATIVE ;
 int HLINKSETF_LOCATION ;
 int HLINKSETF_TARGET ;
 scalar_t__ HlinkCreateFromString (int *,int *,int *,int *,int ,int *,int *,void**) ;
 int IHlink_Release (int *) ;
 int IID_IHlink ;
 int IMoniker_Release (int *) ;
 scalar_t__ S_OK ;
 int * getMonikerRef (int *,int *,char const*,int ) ;
 int getStringRef (int *,char const*,char const*) ;
 int ok (int,char*,scalar_t__) ;
 int setMonikerRef (int *,int,int *,char const*) ;
 int setStringRef (int *,int,char const*,char const*) ;
 scalar_t__ wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_HlinkMoniker(void)
{
    IHlink *hlink;
    IMoniker *aMon, *file_mon;
    static const WCHAR emptyW[] = {0};
    static const WCHAR wordsW[] = {'w','o','r','d','s',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    HRESULT hres;

    hres = HlinkCreateFromString(((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), &IID_IHlink, (void**)&hlink);
    ok(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    getStringRef(hlink, ((void*)0), ((void*)0));
    getMonikerRef(hlink, ((void*)0), ((void*)0), HLINKGETREF_RELATIVE);


    setStringRef(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, aW, wordsW);
    getStringRef(hlink, aW, wordsW);
    aMon = getMonikerRef(hlink, (IMoniker*)0xFFFFFFFF, wordsW, HLINKGETREF_RELATIVE);
    ok(aMon != ((void*)0), "Moniker from %s target should not be NULL\n", wine_dbgstr_w(aW));
    if(aMon)
        IMoniker_Release(aMon);



    setStringRef(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, emptyW, emptyW);
    getStringRef(hlink, ((void*)0), ((void*)0));
    getMonikerRef(hlink, ((void*)0), ((void*)0), HLINKGETREF_RELATIVE);



    hres = CreateFileMoniker(bW, &file_mon);
    ok(hres == S_OK, "CreateFileMoniker failed: 0x%08x\n", hres);

    setMonikerRef(hlink, HLINKSETF_TARGET | HLINKSETF_LOCATION, file_mon, wordsW);
    getStringRef(hlink, bW, wordsW);
    getMonikerRef(hlink, file_mon, wordsW, HLINKGETREF_RELATIVE);

    IMoniker_Release(file_mon);

    IHlink_Release(hlink);
}
