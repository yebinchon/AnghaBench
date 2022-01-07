
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ctx ;
typedef int WCHAR ;
struct TYPE_8__ {TYPE_1__* ProcessEnvironmentBlock; } ;
struct TYPE_7__ {int NtSystemRoot; } ;
struct TYPE_6__ {int cbSize; int dwFlags; int * lpSource; int * lpResourceName; int * hModule; } ;
struct TYPE_5__ {int * ImageBaseAddress; } ;
typedef int PVOID ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef int HANDLE ;
typedef TYPE_2__ ACTCTXW ;


 int ACTCTX_FLAG_HMODULE_VALID ;
 int ACTCTX_FLAG_RESOURCE_NAME_VALID ;
 scalar_t__ CREATEPROCESS_MANIFEST_RESOURCE_ID ;
 int DPRINT1 (char*,int ) ;
 int LdrpInitializeProcessCompat (void*,int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 TYPE_4__* NtCurrentTeb () ;
 int RTL_NUMBER_OF (int *) ;
 scalar_t__ RosGetProcessCompatVersion () ;
 int RtlCreateActivationContext (int ,int ,int ,int *,int *,int *) ;
 int RtlStringCchCatW (int *,int ,char*) ;
 int RtlStringCchCopyW (int *,int ,int ) ;
 TYPE_3__* SharedUserData ;
 void* check_actctx (int ) ;
 void* implicit_actctx ;
 void* process_actctx ;

void actctx_init(PVOID* pOldShimData)
{
    ACTCTXW ctx;
    HANDLE handle;
    WCHAR buffer[1024];
    NTSTATUS Status;

    ctx.cbSize = sizeof(ctx);
    ctx.lpSource = ((void*)0);
    ctx.dwFlags = ACTCTX_FLAG_RESOURCE_NAME_VALID | ACTCTX_FLAG_HMODULE_VALID;
    ctx.hModule = NtCurrentTeb()->ProcessEnvironmentBlock->ImageBaseAddress;
    ctx.lpResourceName = (LPCWSTR)CREATEPROCESS_MANIFEST_RESOURCE_ID;

    if (NT_SUCCESS(RtlCreateActivationContext(0, (PVOID)&ctx, 0, ((void*)0), ((void*)0), &handle)))
    {
        process_actctx = check_actctx(handle);
    }



    LdrpInitializeProcessCompat(process_actctx, pOldShimData);


    ctx.dwFlags = 0;
    ctx.hModule = ((void*)0);
    ctx.lpResourceName = ((void*)0);
    ctx.lpSource = buffer;
    RtlStringCchCopyW(buffer, RTL_NUMBER_OF(buffer), SharedUserData->NtSystemRoot);

    if (RosGetProcessCompatVersion())
    {
        RtlStringCchCatW(buffer, RTL_NUMBER_OF(buffer), L"\\winsxs\\manifests\\forwardcompatible.manifest");
    }
    else
    {
        RtlStringCchCatW(buffer, RTL_NUMBER_OF(buffer), L"\\winsxs\\manifests\\systemcompatible.manifest");
    }

    Status = RtlCreateActivationContext(0, (PVOID)&ctx, 0, ((void*)0), ((void*)0), &handle);
    if (NT_SUCCESS(Status))
    {
        implicit_actctx = check_actctx(handle);
    }
    else
    {
        DPRINT1("Failed to create the implicit act ctx. Status: 0x%x!!!\n", Status);
    }
}
