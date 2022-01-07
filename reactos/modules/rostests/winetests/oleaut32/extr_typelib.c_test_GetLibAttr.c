
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int TLIBATTR ;
typedef int ITypeLib ;
typedef scalar_t__ HRESULT ;


 scalar_t__ ITypeLib_AddRef (int *) ;
 scalar_t__ ITypeLib_GetLibAttr (int *,int **) ;
 int ITypeLib_Release (int *) ;
 int ITypeLib_ReleaseTLibAttr (int *,int *) ;
 scalar_t__ LoadTypeLib (int ,int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;
 int wszStdOle2 ;

__attribute__((used)) static void test_GetLibAttr(void)
{
    ULONG ref1, ref2;
    TLIBATTR *attr;
    ITypeLib *tl;
    HRESULT hr;

    hr = LoadTypeLib(wszStdOle2, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ref1 = ITypeLib_AddRef(tl);
    ITypeLib_Release(tl);

    hr = ITypeLib_GetLibAttr(tl, &attr);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ref2 = ITypeLib_AddRef(tl);
    ITypeLib_Release(tl);
    ok(ref2 == ref1, "got %d, %d\n", ref2, ref1);

    ITypeLib_ReleaseTLibAttr(tl, attr);
    ITypeLib_Release(tl);
}
