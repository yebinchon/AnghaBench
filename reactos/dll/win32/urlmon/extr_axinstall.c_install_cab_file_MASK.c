#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int install_type; int /*<<< orphan*/ * tmp_dir; int /*<<< orphan*/  install_file; scalar_t__ callback; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BINDSTATUS_INSTALLINGCOMPONENTS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  INSTALL_DLL 129 
#define  INSTALL_INF 128 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC15(install_ctx_t *ctx)
{
    WCHAR tmp_path[MAX_PATH], tmp_dir[MAX_PATH];
    BOOL res = FALSE, leave_temp = FALSE;
    DWORD i;
    HRESULT hres;

    FUNC4(FUNC0(tmp_path), tmp_path);

    for(i=0; !res && i < 100; i++) {
        FUNC3(tmp_path, NULL, FUNC5() + i*17037, tmp_dir);
        res = FUNC1(tmp_dir, NULL);
    }
    if(!res)
        return E_FAIL;

    ctx->tmp_dir = tmp_dir;

    FUNC9("Using temporary directory %s\n", FUNC11(tmp_dir));

    hres = FUNC12(ctx);
    if(FUNC8(hres)) {
        if(ctx->callback)
            FUNC6(ctx->callback, 0, 0, BINDSTATUS_INSTALLINGCOMPONENTS, ctx->install_file);

        switch(ctx->install_type) {
        case INSTALL_INF:
            hres = FUNC13(ctx);
            break;
        case INSTALL_DLL:
            FUNC2("Installing DLL, registering in temporary location\n");
            hres = FUNC14(ctx);
            if(FUNC8(hres))
                leave_temp = TRUE;
            break;
        default:
            FUNC10(0);
        }
    }

    if(!leave_temp)
        FUNC7(ctx->tmp_dir);
    return hres;
}