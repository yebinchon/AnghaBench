
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IMoniker ;
typedef int IHlink ;
typedef scalar_t__ HRESULT ;


 int HLINKGETREF_RELATIVE ;
 int HLINKSETF_TARGET ;
 scalar_t__ HlinkCreateFromString (char const*,char const*,int *,int *,int ,int *,int *,void*) ;
 int IHlink_Release (int *) ;
 int IID_IHlink ;
 int IMoniker_Release (int *) ;
 scalar_t__ S_OK ;
 int * getMonikerRef (int *,int *,char const*,int ) ;
 int getStringRef (int *,char const*,char const*) ;
 int ok (int,char*,...) ;
 int setStringRef (int *,int ,char const*,int *) ;

__attribute__((used)) static void test_HashLink(void)
{
    IHlink *hlink;
    IMoniker *pmk;
    const WCHAR hash_targetW[] = {'a','f','i','l','e','#','a','n','a','n','c','h','o','r',0};
    const WCHAR two_hash_targetW[] = {'a','f','i','l','e','#','a','n','a','n','c','h','o','r','#','a','n','o','t','h','e','r',0};
    const WCHAR hash_no_tgtW[] = {'#','a','n','a','n','c','h','o','r',0};
    const WCHAR tgt_partW[] = {'a','f','i','l','e',0};
    const WCHAR loc_partW[] = {'a','n','a','n','c','h','o','r',0};
    const WCHAR two_hash_loc_partW[] = {'a','n','a','n','c','h','o','r','#','a','n','o','t','h','e','r',0};
    const WCHAR test_locW[] = {'t','e','s','t','l','o','c',0};
    HRESULT hres;


    hres = HlinkCreateFromString(hash_targetW, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), &IID_IHlink, (void*)&hlink);
    ok(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    ok(hlink != ((void*)0), "Didn't get an hlink\n");

    if(hlink){
        getStringRef(hlink, tgt_partW, loc_partW);
        pmk = getMonikerRef(hlink, (IMoniker*)0xFFFFFFFF, loc_partW, HLINKGETREF_RELATIVE);
        ok(pmk != ((void*)0), "Found moniker should not be NULL\n");
        if(pmk)
            IMoniker_Release(pmk);

        setStringRef(hlink, HLINKSETF_TARGET, hash_targetW, ((void*)0));
        getStringRef(hlink, hash_targetW, loc_partW);

        IHlink_Release(hlink);
    }


    hres = HlinkCreateFromString(two_hash_targetW, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), &IID_IHlink, (void*)&hlink);
    ok(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    ok(hlink != ((void*)0), "Didn't get an hlink\n");

    if(hlink){
        getStringRef(hlink, tgt_partW, two_hash_loc_partW);
        pmk = getMonikerRef(hlink, (IMoniker*)0xFFFFFFFF, two_hash_loc_partW, HLINKGETREF_RELATIVE);
        ok(pmk != ((void*)0), "Found moniker should not be NULL\n");
        if(pmk)
            IMoniker_Release(pmk);

        IHlink_Release(hlink);
    }


    hres = HlinkCreateFromString(hash_targetW, test_locW, ((void*)0), ((void*)0), 0, ((void*)0), &IID_IHlink, (void*)&hlink);
    ok(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    ok(hlink != ((void*)0), "Didn't get an hlink\n");

    if(hlink){
        getStringRef(hlink, tgt_partW, test_locW);
        pmk = getMonikerRef(hlink, (IMoniker*)0xFFFFFFFF, test_locW, HLINKGETREF_RELATIVE);
        ok(pmk != ((void*)0), "Found moniker should not be NULL\n");
        if(pmk)
            IMoniker_Release(pmk);

        IHlink_Release(hlink);
    }


    hres = HlinkCreateFromString(hash_no_tgtW, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), &IID_IHlink, (void*)&hlink);
    ok(hres == S_OK, "HlinkCreateFromString failed: 0x%08x\n", hres);
    ok(hlink != ((void*)0), "Didn't get an hlink\n");

    if(hlink){
        getStringRef(hlink, ((void*)0), loc_partW);
        pmk = getMonikerRef(hlink, (IMoniker*)0xFFFFFFFF, loc_partW, HLINKGETREF_RELATIVE);
        ok(pmk == ((void*)0), "Found moniker should be NULL\n");
        if(pmk)
            IMoniker_Release(pmk);

        IHlink_Release(hlink);
    }
}
