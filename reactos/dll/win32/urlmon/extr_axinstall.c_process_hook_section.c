
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tmp_dir; int hwnd; int install_file; } ;
typedef TYPE_1__ install_ctx_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (char*) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 scalar_t__ GetPrivateProfileStringW (char const*,char const*,int *,char*,int ,int ) ;
 int MAX_PATH ;
 int RunSetupCommandW (int ,char*,int *,int ,int *,int *,int ,int *) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_w (char const*) ;
 int expand_command (TYPE_1__*,char*,char*,size_t*) ;
 char* heap_alloc (size_t) ;
 int heap_free (char*) ;
 int strcmpiW (char const*,char const*) ;
 scalar_t__ strlenW (char const*) ;

__attribute__((used)) static HRESULT process_hook_section(install_ctx_t *ctx, const WCHAR *sect_name)
{
    WCHAR buf[2048], val[2*MAX_PATH];
    const WCHAR *key;
    DWORD len;
    HRESULT hres;

    static const WCHAR runW[] = {'r','u','n',0};

    len = GetPrivateProfileStringW(sect_name, ((void*)0), ((void*)0), buf, ARRAY_SIZE(buf), ctx->install_file);
    if(!len)
        return S_OK;

    for(key = buf; *key; key += strlenW(key)+1) {
        if(!strcmpiW(key, runW)) {
            WCHAR *cmd;
            size_t size;

            len = GetPrivateProfileStringW(sect_name, runW, ((void*)0), val, ARRAY_SIZE(val), ctx->install_file);

            TRACE("Run %s\n", debugstr_w(val));

            expand_command(ctx, val, ((void*)0), &size);

            cmd = heap_alloc(size*sizeof(WCHAR));
            if(!cmd)
                heap_free(cmd);

            expand_command(ctx, val, cmd, &size);
            hres = RunSetupCommandW(ctx->hwnd, cmd, ((void*)0), ctx->tmp_dir, ((void*)0), ((void*)0), 0, ((void*)0));
            heap_free(cmd);
            if(FAILED(hres))
                return hres;
        }else {
            FIXME("Unsupported hook %s\n", debugstr_w(key));
            return E_NOTIMPL;
        }
    }

    return S_OK;
}
