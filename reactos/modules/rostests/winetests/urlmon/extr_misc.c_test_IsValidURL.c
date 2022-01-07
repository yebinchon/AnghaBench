
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 int CreateBindCtx (int ,int **) ;
 scalar_t__ E_INVALIDARG ;
 int IBindCtx_Release (int *) ;
 scalar_t__ IsValidURL (int *,int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int wszHttpWineHQ ;

__attribute__((used)) static void test_IsValidURL(void)
{
    HRESULT hr;
    IBindCtx *bctx = ((void*)0);

    hr = IsValidURL(((void*)0), 0, 0);
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = IsValidURL(((void*)0), wszHttpWineHQ, 0);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    CreateBindCtx(0, &bctx);

    hr = IsValidURL(bctx, wszHttpWineHQ, 0);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    IBindCtx_Release(bctx);
}
