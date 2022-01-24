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
struct TYPE_4__ {int /*<<< orphan*/  tmp_dir; int /*<<< orphan*/  install_file; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSC_FLAG_INF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static HRESULT FUNC9(install_ctx_t *ctx)
{
    WCHAR buf[2048], sect_name[128];
    BOOL default_install = TRUE;
    const WCHAR *key;
    DWORD len;
    HRESULT hres;

    static const WCHAR setup_hooksW[] = {'S','e','t','u','p',' ','H','o','o','k','s',0};
    static const WCHAR add_codeW[] = {'A','d','d','.','C','o','d','e',0};

    len = FUNC2(setup_hooksW, NULL, NULL, buf, FUNC0(buf), ctx->install_file);
    if(len) {
        default_install = FALSE;

        for(key = buf; *key; key += FUNC8(key)+1) {
            FUNC4("[Setup Hooks] key: %s\n", FUNC6(key));

            len = FUNC2(setup_hooksW, key, NULL, sect_name, FUNC0(sect_name),
                    ctx->install_file);
            if(!len) {
                FUNC5("Could not get key value\n");
                return E_FAIL;
            }

            hres = FUNC7(ctx, sect_name);
            if(FUNC1(hres))
                return hres;
        }
    }

    len = FUNC2(add_codeW, NULL, NULL, buf, FUNC0(buf), ctx->install_file);
    if(len) {
        default_install = FALSE;

        for(key = buf; *key; key += FUNC8(key)+1) {
            FUNC4("[Add.Code] key: %s\n", FUNC6(key));

            len = FUNC2(add_codeW, key, NULL, sect_name, FUNC0(sect_name),
                    ctx->install_file);
            if(!len) {
                FUNC5("Could not get key value\n");
                return E_FAIL;
            }

            hres = FUNC3(ctx->hwnd, ctx->install_file, sect_name,
                    ctx->tmp_dir, NULL, NULL, RSC_FLAG_INF, NULL);
            if(FUNC1(hres)) {
                FUNC5("RunSetupCommandW failed: %08x\n", hres);
                return hres;
            }
        }
    }

    if(default_install) {
        hres = FUNC3(ctx->hwnd, ctx->install_file, NULL, ctx->tmp_dir, NULL, NULL, RSC_FLAG_INF, NULL);
        if(FUNC1(hres)) {
            FUNC5("RunSetupCommandW failed: %08x\n", hres);
            return hres;
        }
    }

    return S_OK;
}