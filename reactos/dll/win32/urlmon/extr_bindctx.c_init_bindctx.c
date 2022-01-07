
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbStruct; int grfMode; scalar_t__ dwTickCountDeadline; int grfFlags; } ;
typedef int IEnumFORMATETC ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ BIND_OPTS ;


 int BIND_MAYBOTHERUSER ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IBindCtx_SetBindOptions (int *,TYPE_1__*) ;
 int RegisterBindStatusCallback (int *,int *,int *,int ) ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int S_OK ;

__attribute__((used)) static HRESULT init_bindctx(IBindCtx *bindctx, DWORD options,
       IBindStatusCallback *callback, IEnumFORMATETC *format)
{
    BIND_OPTS bindopts;
    HRESULT hres;

    if(options)
        FIXME("not supported options %08x\n", options);
    if(format)
        FIXME("format is not supported\n");

    bindopts.cbStruct = sizeof(BIND_OPTS);
    bindopts.grfFlags = BIND_MAYBOTHERUSER;
    bindopts.grfMode = STGM_READWRITE | STGM_SHARE_EXCLUSIVE;
    bindopts.dwTickCountDeadline = 0;

    hres = IBindCtx_SetBindOptions(bindctx, &bindopts);
    if(FAILED(hres))
       return hres;

    if(callback) {
        hres = RegisterBindStatusCallback(bindctx, callback, ((void*)0), 0);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
