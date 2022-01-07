
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_9__ {TYPE_2__* ActivationContextStackPointer; } ;
struct TYPE_8__ {scalar_t__ DllBase; scalar_t__ EntryPointActivationContext; } ;
struct TYPE_7__ {TYPE_1__* ActiveFrame; } ;
struct TYPE_6__ {scalar_t__ ActivationContext; } ;
typedef int NTSTATUS ;
typedef TYPE_3__ LDR_DATA_TABLE_ENTRY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ ActivationContextBasicInformation ;
 int LdrFindEntryForAddress (scalar_t__,TYPE_3__**) ;
 int LdrLockLoaderLock (int ,int *,int *) ;
 int LdrUnlockLoaderLock (int ,int ) ;
 TYPE_4__* NtCurrentTeb () ;
 int RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_ADDRESS ;
 int RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE ;
 int RTL_QUERY_ACTIVATION_CONTEXT_FLAG_USE_ACTIVE_ACTIVATION_CONTEXT ;
 int STATUS_DLL_NOT_FOUND ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ process_actctx ;

__attribute__((used)) static NTSTATUS find_query_actctx( HANDLE *handle, DWORD flags, ULONG class )
{
    NTSTATUS status = STATUS_SUCCESS;

    if (flags & RTL_QUERY_ACTIVATION_CONTEXT_FLAG_USE_ACTIVE_ACTIVATION_CONTEXT)
    {
        if (*handle) return STATUS_INVALID_PARAMETER;

        if (NtCurrentTeb()->ActivationContextStackPointer->ActiveFrame)
            *handle = NtCurrentTeb()->ActivationContextStackPointer->ActiveFrame->ActivationContext;
    }
    else if (flags & (RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_ADDRESS | RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE))
    {
        ULONG_PTR magic;
        LDR_DATA_TABLE_ENTRY *pldr;

        if (!*handle) return STATUS_INVALID_PARAMETER;

        LdrLockLoaderLock( 0, ((void*)0), &magic );
        if (!LdrFindEntryForAddress( *handle, &pldr ))
        {
            if ((flags & RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE) && *handle != pldr->DllBase)
                status = STATUS_DLL_NOT_FOUND;
            else
                *handle = pldr->EntryPointActivationContext;
        }
        else status = STATUS_DLL_NOT_FOUND;
        LdrUnlockLoaderLock( 0, magic );
    }
    else if (!*handle && (class != ActivationContextBasicInformation))
        *handle = process_actctx;

    return status;
}
