
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int install_type; int * tmp_dir; int install_file; scalar_t__ callback; } ;
typedef TYPE_1__ install_ctx_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int BINDSTATUS_INSTALLINGCOMPONENTS ;
 scalar_t__ CreateDirectoryW (int *,int *) ;
 int E_FAIL ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int GetTempFileNameW (int *,int *,scalar_t__,int *) ;
 int GetTempPathW (int ,int *) ;
 scalar_t__ GetTickCount () ;
 int IBindStatusCallback_OnProgress (scalar_t__,int ,int ,int ,int ) ;


 int MAX_PATH ;
 int RemoveDirectoryW (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 int debugstr_w (int *) ;
 int extract_cab_file (TYPE_1__*) ;
 int install_inf_file (TYPE_1__*) ;
 int setup_dll (TYPE_1__*) ;

__attribute__((used)) static HRESULT install_cab_file(install_ctx_t *ctx)
{
    WCHAR tmp_path[MAX_PATH], tmp_dir[MAX_PATH];
    BOOL res = FALSE, leave_temp = FALSE;
    DWORD i;
    HRESULT hres;

    GetTempPathW(ARRAY_SIZE(tmp_path), tmp_path);

    for(i=0; !res && i < 100; i++) {
        GetTempFileNameW(tmp_path, ((void*)0), GetTickCount() + i*17037, tmp_dir);
        res = CreateDirectoryW(tmp_dir, ((void*)0));
    }
    if(!res)
        return E_FAIL;

    ctx->tmp_dir = tmp_dir;

    TRACE("Using temporary directory %s\n", debugstr_w(tmp_dir));

    hres = extract_cab_file(ctx);
    if(SUCCEEDED(hres)) {
        if(ctx->callback)
            IBindStatusCallback_OnProgress(ctx->callback, 0, 0, BINDSTATUS_INSTALLINGCOMPONENTS, ctx->install_file);

        switch(ctx->install_type) {
        case 128:
            hres = install_inf_file(ctx);
            break;
        case 129:
            FIXME("Installing DLL, registering in temporary location\n");
            hres = setup_dll(ctx);
            if(SUCCEEDED(hres))
                leave_temp = TRUE;
            break;
        default:
            assert(0);
        }
    }

    if(!leave_temp)
        RemoveDirectoryW(ctx->tmp_dir);
    return hres;
}
