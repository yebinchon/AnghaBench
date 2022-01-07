
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 int BindStatusCallback ;
 int BindToStorage ;
 int CHECK_CALLED (int ) ;
 int CreateBindCtx (int ,int **) ;
 int GetDisplayName ;
 scalar_t__ HlinkResolveMonikerForData (int *,int ,int *,int ,int *,int *,int *) ;
 int IBindCtx_Release (int *) ;
 int IsSystemMoniker ;
 int Moniker ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int * _bctx ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_HlinkResolveMonikerForData(void)
{
    IBindCtx *bctx;
    HRESULT hres;

    CreateBindCtx(0, &bctx);
    _bctx = bctx;

    SET_EXPECT(IsSystemMoniker);
    SET_EXPECT(GetDisplayName);
    SET_EXPECT(BindToStorage);

    hres = HlinkResolveMonikerForData(&Moniker, 0, bctx, 0, ((void*)0), &BindStatusCallback, ((void*)0));
    ok(hres == S_OK, "HlinkResolveMonikerForData failed: %08x\n", hres);

    CHECK_CALLED(IsSystemMoniker);
    CHECK_CALLED(GetDisplayName);
    CHECK_CALLED(BindToStorage);

    IBindCtx_Release(bctx);
    _bctx = ((void*)0);
}
