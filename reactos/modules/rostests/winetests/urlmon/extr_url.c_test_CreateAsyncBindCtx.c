
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bindopts ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int cbStruct; scalar_t__ grfFlags; int grfMode; int dwTickCountDeadline; } ;
typedef int IUnknown ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_1__ BIND_OPTS ;


 scalar_t__ BIND_MAYBOTHERUSER ;
 int CHECK_CALLED (int ) ;
 int CreateAsyncBindCtx (int ,int *,int *,int **) ;
 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int IBindCtx_GetBindOptions (int *,TYPE_1__*) ;
 int IBindCtx_QueryInterface (int *,int *,void**) ;
 scalar_t__ IBindCtx_Release (int *) ;
 int IID_IAsyncBindCtx ;
 int IUnknown_Release (int *) ;
 int QueryInterface_IServiceProvider ;
 int SET_EXPECT (int ) ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int bsc ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_CreateAsyncBindCtx(void)
{
    IBindCtx *bctx = (IBindCtx*)0x0ff00ff0;
    IUnknown *unk;
    HRESULT hres;
    ULONG ref;
    BIND_OPTS bindopts;

    hres = CreateAsyncBindCtx(0, ((void*)0), ((void*)0), &bctx);
    ok(hres == E_INVALIDARG, "CreateAsyncBindCtx failed. expected: E_INVALIDARG, got: %08x\n", hres);
    ok(bctx == (IBindCtx*)0x0ff00ff0, "bctx should not be changed\n");

    hres = CreateAsyncBindCtx(0, ((void*)0), ((void*)0), ((void*)0));
    ok(hres == E_INVALIDARG, "CreateAsyncBindCtx failed. expected: E_INVALIDARG, got: %08x\n", hres);

    SET_EXPECT(QueryInterface_IServiceProvider);
    hres = CreateAsyncBindCtx(0, (IBindStatusCallback*)&bsc, ((void*)0), &bctx);
    ok(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n", hres);
    CHECK_CALLED(QueryInterface_IServiceProvider);

    bindopts.cbStruct = sizeof(bindopts);
    hres = IBindCtx_GetBindOptions(bctx, &bindopts);
    ok(hres == S_OK, "IBindCtx_GetBindOptions failed: %08x\n", hres);
    ok(bindopts.grfFlags == BIND_MAYBOTHERUSER,
                "bindopts.grfFlags = %08x, expected: BIND_MAYBOTHERUSER\n", bindopts.grfFlags);
    ok(bindopts.grfMode == (STGM_READWRITE | STGM_SHARE_EXCLUSIVE),
                "bindopts.grfMode = %08x, expected: STGM_READWRITE | STGM_SHARE_EXCLUSIVE\n",
                bindopts.grfMode);
    ok(bindopts.dwTickCountDeadline == 0,
                "bindopts.dwTickCountDeadline = %08x, expected: 0\n", bindopts.dwTickCountDeadline);

    hres = IBindCtx_QueryInterface(bctx, &IID_IAsyncBindCtx, (void**)&unk);
    ok(hres == E_NOINTERFACE, "QueryInterface(IID_IAsyncBindCtx) failed: %08x, expected E_NOINTERFACE\n", hres);
    if(SUCCEEDED(hres))
        IUnknown_Release(unk);

    ref = IBindCtx_Release(bctx);
    ok(ref == 0, "bctx should be destroyed here\n");
}
