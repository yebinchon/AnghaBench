
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef char OLECHAR ;
typedef int ITypeLib ;
typedef int ITypeInfo2 ;
typedef int ICreateTypeLib2 ;
typedef int ICreateTypeInfo ;
typedef int HRESULT ;


 int CreateTypeLib2 (int *,char const*,int*) ;
 int ICreateTypeInfo2_QueryInterface (int *,int **,int*) ;
 int ICreateTypeInfo_QueryInterface (int *,int *,void**) ;
 int ICreateTypeInfo_Release (int *) ;
 int ICreateTypeLib2_CreateTypeInfo (int *,char*,int*,...) ;
 int ICreateTypeLib2_Release (int *) ;
 int IID_ITypeInfo2 ;
 int ITypeInfo2_GetContainingTypeLib (int *,int **,int*) ;
 int ITypeInfo2_Release (int *) ;
 int ITypeLib_Release (int *) ;
 int SYS_WIN32 ;
 int TKIND_DISPATCH ;
 int ok (int,char*,...) ;
 int ok_ole_success (int ,int (*) (int *,int **,int*)) ;

__attribute__((used)) static void test_TypeInfo2_GetContainingTypeLib(void)
{
    static const WCHAR test[] = {'t','e','s','t','.','t','l','b',0};
    static OLECHAR testTI[] = {'t','e','s','t','T','y','p','e','I','n','f','o',0};

    ICreateTypeLib2 *ctl2;
    ICreateTypeInfo *cti;
    ITypeInfo2 *ti2;
    ITypeLib *tl;
    UINT Index;
    HRESULT hr;

    hr = CreateTypeLib2(SYS_WIN32, test, &ctl2);
    ok_ole_success(hr, CreateTypeLib2);

    hr = ICreateTypeLib2_CreateTypeInfo(ctl2, testTI, TKIND_DISPATCH, &cti);
    ok_ole_success(hr, ICreateTypeLib2_CreateTypeInfo);

    hr = ICreateTypeInfo_QueryInterface(cti, &IID_ITypeInfo2, (void**)&ti2);
    ok_ole_success(hr, ICreateTypeInfo2_QueryInterface);

    tl = ((void*)0);
    Index = 888;
    hr = ITypeInfo2_GetContainingTypeLib(ti2, &tl, &Index);
    ok_ole_success(hr, ITypeInfo2_GetContainingTypeLib);
    ok(tl != ((void*)0), "ITypeInfo2_GetContainingTypeLib returned empty TypeLib\n");
    ok(Index == 0, "ITypeInfo2_GetContainingTypeLib returned Index = %u, expected 0\n", Index);
    if(tl) ITypeLib_Release(tl);

    tl = ((void*)0);
    hr = ITypeInfo2_GetContainingTypeLib(ti2, &tl, ((void*)0));
    ok_ole_success(hr, ITypeInfo2_GetContainingTypeLib);
    ok(tl != ((void*)0), "ITypeInfo2_GetContainingTypeLib returned empty TypeLib\n");
    if(tl) ITypeLib_Release(tl);

    Index = 888;
    hr = ITypeInfo2_GetContainingTypeLib(ti2, ((void*)0), &Index);
    ok_ole_success(hr, ITypeInfo2_GetContainingTypeLib);
    ok(Index == 0, "ITypeInfo2_GetContainingTypeLib returned Index = %u, expected 0\n", Index);

    hr = ITypeInfo2_GetContainingTypeLib(ti2, ((void*)0), ((void*)0));
    ok_ole_success(hr, ITypeInfo2_GetContainingTypeLib);

    ITypeInfo2_Release(ti2);
    ICreateTypeInfo_Release(cti);
    ICreateTypeLib2_Release(ctl2);
}
