
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tmp_dir; int install_file; int hwnd; } ;
typedef TYPE_1__ install_ctx_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char*) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ GetPrivateProfileStringW (char const*,char const*,int *,char*,int ,int ) ;
 int RSC_FLAG_INF ;
 int RunSetupCommandW (int ,int ,char*,int ,int *,int *,int ,int *) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int WARN (char*,...) ;
 int debugstr_w (char const*) ;
 int process_hook_section (TYPE_1__*,char*) ;
 scalar_t__ strlenW (char const*) ;

__attribute__((used)) static HRESULT install_inf_file(install_ctx_t *ctx)
{
    WCHAR buf[2048], sect_name[128];
    BOOL default_install = TRUE;
    const WCHAR *key;
    DWORD len;
    HRESULT hres;

    static const WCHAR setup_hooksW[] = {'S','e','t','u','p',' ','H','o','o','k','s',0};
    static const WCHAR add_codeW[] = {'A','d','d','.','C','o','d','e',0};

    len = GetPrivateProfileStringW(setup_hooksW, ((void*)0), ((void*)0), buf, ARRAY_SIZE(buf), ctx->install_file);
    if(len) {
        default_install = FALSE;

        for(key = buf; *key; key += strlenW(key)+1) {
            TRACE("[Setup Hooks] key: %s\n", debugstr_w(key));

            len = GetPrivateProfileStringW(setup_hooksW, key, ((void*)0), sect_name, ARRAY_SIZE(sect_name),
                    ctx->install_file);
            if(!len) {
                WARN("Could not get key value\n");
                return E_FAIL;
            }

            hres = process_hook_section(ctx, sect_name);
            if(FAILED(hres))
                return hres;
        }
    }

    len = GetPrivateProfileStringW(add_codeW, ((void*)0), ((void*)0), buf, ARRAY_SIZE(buf), ctx->install_file);
    if(len) {
        default_install = FALSE;

        for(key = buf; *key; key += strlenW(key)+1) {
            TRACE("[Add.Code] key: %s\n", debugstr_w(key));

            len = GetPrivateProfileStringW(add_codeW, key, ((void*)0), sect_name, ARRAY_SIZE(sect_name),
                    ctx->install_file);
            if(!len) {
                WARN("Could not get key value\n");
                return E_FAIL;
            }

            hres = RunSetupCommandW(ctx->hwnd, ctx->install_file, sect_name,
                    ctx->tmp_dir, ((void*)0), ((void*)0), RSC_FLAG_INF, ((void*)0));
            if(FAILED(hres)) {
                WARN("RunSetupCommandW failed: %08x\n", hres);
                return hres;
            }
        }
    }

    if(default_install) {
        hres = RunSetupCommandW(ctx->hwnd, ctx->install_file, ((void*)0), ctx->tmp_dir, ((void*)0), ((void*)0), RSC_FLAG_INF, ((void*)0));
        if(FAILED(hres)) {
            WARN("RunSetupCommandW failed: %08x\n", hres);
            return hres;
        }
    }

    return S_OK;
}
