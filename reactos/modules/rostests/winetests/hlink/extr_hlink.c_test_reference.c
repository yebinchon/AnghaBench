
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPWSTR ;
typedef int LPVOID ;
typedef int IMoniker ;
typedef int IHlink ;
typedef int HRESULT ;


 int CoTaskMemFree (int *) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int) ;
 int HLINKGETREF_DEFAULT ;
 int HlinkCreateFromString (char const*,int *,int *,int *,int ,int *,int *,int *) ;
 int IHlink_GetAdditionalParams (int *,int *) ;
 int IHlink_GetMonikerReference (int *,int,int **,int **) ;
 int IHlink_GetStringReference (int *,int,int **,int **) ;
 int IHlink_Release (int *) ;
 int IHlink_SetAdditionalParams (int *,int *) ;
 int IID_IHlink ;
 int IMoniker_Release (int *) ;
 int S_OK ;
 int lstrcmpW (int *,char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_reference(void)
{
    HRESULT r;
    IHlink *lnk = ((void*)0);
    IMoniker *mk = ((void*)0);
    const WCHAR url[] = { 'h','t','t','p',':','/','/','w','i','n','e','h','q','.','o','r','g',0 };
    const WCHAR url2[] = { 'h','t','t','p',':','/','/','w','i','n','e','h','q','.','o','r','g','/',0 };
    LPWSTR str = ((void*)0);

    r = HlinkCreateFromString(url, ((void*)0), ((void*)0), ((void*)0),
                              0, ((void*)0), &IID_IHlink, (LPVOID*) &lnk);
    ok(r == S_OK, "failed to create link\n");
    if (FAILED(r))
        return;

    r = IHlink_GetMonikerReference(lnk, HLINKGETREF_DEFAULT, ((void*)0), ((void*)0));
    ok(r == S_OK, "failed\n");

    r = IHlink_GetMonikerReference(lnk, HLINKGETREF_DEFAULT, &mk, &str);
    ok(r == S_OK, "failed\n");
    ok(mk != ((void*)0), "no moniker\n");
    ok(str == ((void*)0), "string should be null\n");

    r = IMoniker_Release(mk);
    ok( r == 1, "moniker refcount wrong\n");

    r = IHlink_GetStringReference(lnk, -1, &str, ((void*)0));
    ok(r == S_OK, "failed\n");
    CoTaskMemFree(str);

    r = IHlink_GetStringReference(lnk, -1, ((void*)0), ((void*)0));
    ok(r == S_OK, "failed, r=%08x\n", r);

    r = IHlink_GetStringReference(lnk, -1, ((void*)0), &str);
    ok(r == S_OK, "failed, r=%08x\n", r);
    ok(str == ((void*)0), "string should be null\n");

    r = IHlink_GetStringReference(lnk, HLINKGETREF_DEFAULT, &str, ((void*)0));
    ok(r == S_OK, "failed\n");
    ok(!lstrcmpW(str, url2), "url wrong\n");
    CoTaskMemFree(str);

    r = IHlink_GetStringReference(lnk, HLINKGETREF_DEFAULT, ((void*)0), ((void*)0));
    ok(r == S_OK, "failed\n");

    r = IHlink_GetStringReference(lnk, HLINKGETREF_DEFAULT, ((void*)0), &str);
    ok(r == S_OK, "failed\n");
    ok(str == ((void*)0), "string should be null\n");


    r = IHlink_GetAdditionalParams(lnk, ((void*)0));
    ok(r == E_NOTIMPL, "failed\n");

    r = IHlink_SetAdditionalParams(lnk, ((void*)0));
    ok(r == E_NOTIMPL, "failed\n");

    IHlink_Release(lnk);
}
