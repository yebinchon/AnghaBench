
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int member_4; int member_3; int member_2; int * member_1; int member_0; } ;
typedef int IUnknown ;
typedef int IEnumFORMATETC ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ FORMATETC ;


 int CreateBindCtx (int ,int **) ;
 scalar_t__ CreateFormatEnumerator (int,TYPE_1__*,int **) ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IBindCtx_GetObjectParam (int *,char*,int **) ;
 int IBindCtx_Release (int *) ;
 int IEnumFORMATETC_Release (int *) ;
 scalar_t__ RegisterFormatEnumerator (int *,int *,int ) ;
 scalar_t__ RevokeFormatEnumerator (int *,int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_RegisterFormatEnumerator(void)
{
    IBindCtx *bctx = ((void*)0);
    IEnumFORMATETC *format = ((void*)0), *format2 = ((void*)0);
    IUnknown *unk = ((void*)0);
    HRESULT hres;

    static FORMATETC formatetc = {0,((void*)0),0,0,0};
    static WCHAR wszEnumFORMATETC[] =
        {'_','E','n','u','m','F','O','R','M','A','T','E','T','C','_',0};

    CreateBindCtx(0, &bctx);

    hres = CreateFormatEnumerator(1, &formatetc, &format);
    ok(hres == S_OK, "CreateFormatEnumerator failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = RegisterFormatEnumerator(((void*)0), format, 0);
    ok(hres == E_INVALIDARG,
            "RegisterFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);
    hres = RegisterFormatEnumerator(bctx, ((void*)0), 0);
    ok(hres == E_INVALIDARG,
            "RegisterFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);

    hres = RegisterFormatEnumerator(bctx, format, 0);
    ok(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);

    hres = IBindCtx_GetObjectParam(bctx, wszEnumFORMATETC, &unk);
    ok(hres == S_OK, "GetObjectParam failed: %08x\n", hres);
    ok(unk == (IUnknown*)format, "unk != format\n");

    hres = RevokeFormatEnumerator(((void*)0), format);
    ok(hres == E_INVALIDARG,
            "RevokeFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);

    hres = RevokeFormatEnumerator(bctx, format);
    ok(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);

    hres = RevokeFormatEnumerator(bctx, format);
    ok(hres == E_FAIL, "RevokeFormatEnumerator failed: %08x, expected E_FAIL\n", hres);

    hres = IBindCtx_GetObjectParam(bctx, wszEnumFORMATETC, &unk);
    ok(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    hres = RegisterFormatEnumerator(bctx, format, 0);
    ok(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);

    hres = CreateFormatEnumerator(1, &formatetc, &format2);
    ok(hres == S_OK, "CreateFormatEnumerator failed: %08x\n", hres);

    if(SUCCEEDED(hres)) {
        hres = RevokeFormatEnumerator(bctx, format);
        ok(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);

        IEnumFORMATETC_Release(format2);
    }

    hres = IBindCtx_GetObjectParam(bctx, wszEnumFORMATETC, &unk);
    ok(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    IEnumFORMATETC_Release(format);

    hres = RegisterFormatEnumerator(bctx, format, 0);
    ok(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);
    hres = RevokeFormatEnumerator(bctx, ((void*)0));
    ok(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);
    hres = IBindCtx_GetObjectParam(bctx, wszEnumFORMATETC, &unk);
    ok(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    IEnumFORMATETC_Release(format);
    IBindCtx_Release(bctx);
}
