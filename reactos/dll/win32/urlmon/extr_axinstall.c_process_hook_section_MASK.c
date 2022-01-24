#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tmp_dir; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  install_file; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*,size_t*) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static HRESULT FUNC12(install_ctx_t *ctx, const WCHAR *sect_name)
{
    WCHAR buf[2048], val[2*MAX_PATH];
    const WCHAR *key;
    DWORD len;
    HRESULT hres;

    static const WCHAR runW[] = {'r','u','n',0};

    len = FUNC3(sect_name, NULL, NULL, buf, FUNC0(buf), ctx->install_file);
    if(!len)
        return S_OK;

    for(key = buf; *key; key += FUNC11(key)+1) {
        if(!FUNC10(key, runW)) {
            WCHAR *cmd;
            size_t size;

            len = FUNC3(sect_name, runW, NULL, val, FUNC0(val), ctx->install_file);

            FUNC5("Run %s\n", FUNC6(val));

            FUNC7(ctx, val, NULL, &size);

            cmd = FUNC8(size*sizeof(WCHAR));
            if(!cmd)
                FUNC9(cmd);

            FUNC7(ctx, val, cmd, &size);
            hres = FUNC4(ctx->hwnd, cmd, NULL, ctx->tmp_dir, NULL, NULL, 0, NULL);
            FUNC9(cmd);
            if(FUNC1(hres))
                return hres;
        }else {
            FUNC2("Unsupported hook %s\n", FUNC6(key));
            return E_NOTIMPL;
        }
    }

    return S_OK;
}