#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {TYPE_1__* ProcessEnvironmentBlock; } ;
struct TYPE_7__ {int /*<<< orphan*/  NtSystemRoot; } ;
struct TYPE_6__ {int cbSize; int dwFlags; int /*<<< orphan*/ * lpSource; int /*<<< orphan*/ * lpResourceName; int /*<<< orphan*/ * hModule; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ImageBaseAddress; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_2__ ACTCTXW ;

/* Variables and functions */
 int ACTCTX_FLAG_HMODULE_VALID ; 
 int ACTCTX_FLAG_RESOURCE_NAME_VALID ; 
 scalar_t__ CREATEPROCESS_MANIFEST_RESOURCE_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* SharedUserData ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* implicit_actctx ; 
 void* process_actctx ; 

void FUNC10(PVOID* pOldShimData)
{
    ACTCTXW ctx;
    HANDLE handle;
    WCHAR buffer[1024];
    NTSTATUS Status;

    ctx.cbSize   = sizeof(ctx);
    ctx.lpSource = NULL;
    ctx.dwFlags  = ACTCTX_FLAG_RESOURCE_NAME_VALID | ACTCTX_FLAG_HMODULE_VALID;
    ctx.hModule  = FUNC3()->ProcessEnvironmentBlock->ImageBaseAddress;
    ctx.lpResourceName = (LPCWSTR)CREATEPROCESS_MANIFEST_RESOURCE_ID;

    if (FUNC2(FUNC6(0, (PVOID)&ctx, 0, NULL, NULL, &handle)))
    {
        process_actctx = FUNC9(handle);
    }

    /* ReactOS specific:
       Now that we have found the process_actctx we can initialize the process compat subsystem */
    FUNC1(process_actctx, pOldShimData);


    ctx.dwFlags  = 0;
    ctx.hModule  = NULL;
    ctx.lpResourceName = NULL;
    ctx.lpSource = buffer;
    FUNC8(buffer, FUNC4(buffer), SharedUserData->NtSystemRoot);

    if (FUNC5())
    {
        FUNC7(buffer, FUNC4(buffer), L"\\winsxs\\manifests\\forwardcompatible.manifest");
    }
    else
    {
        FUNC7(buffer, FUNC4(buffer), L"\\winsxs\\manifests\\systemcompatible.manifest");
    }

    Status = FUNC6(0, (PVOID)&ctx, 0, NULL, NULL, &handle);
    if (FUNC2(Status))
    {
        implicit_actctx = FUNC9(handle);
    }
    else
    {
        FUNC0("Failed to create the implicit act ctx. Status: 0x%x!!!\n", Status);
    }
}