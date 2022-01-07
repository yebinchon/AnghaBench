
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ USHORT ;
struct TYPE_7__ {scalar_t__ MaximumLength; scalar_t__ Length; int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
typedef int ULONG_PTR ;
struct TYPE_6__ {scalar_t__ Length; int Buffer; } ;
struct TYPE_8__ {TYPE_1__ FullDllName; } ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ LDR_DATA_TABLE_ENTRY ;
typedef int HMODULE ;


 scalar_t__ LdrFindEntryForAddress (int ,TYPE_3__**) ;
 int LdrLockLoaderLock (int ,int *,int *) ;
 int LdrUnlockLoaderLock (int ,int ) ;
 int RtlAllocateHeap (int ,int ,scalar_t__) ;
 int RtlGetProcessHeap () ;
 scalar_t__ STATUS_NO_MEMORY ;
 scalar_t__ STATUS_SUCCESS ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static NTSTATUS get_module_filename( HMODULE module, UNICODE_STRING *str, USHORT extra_len )
{
    NTSTATUS status;
    ULONG_PTR magic;
    LDR_DATA_TABLE_ENTRY *pldr;

    LdrLockLoaderLock(0, ((void*)0), &magic);
    status = LdrFindEntryForAddress( module, &pldr );
    if (status == STATUS_SUCCESS)
    {
        if ((str->Buffer = RtlAllocateHeap( RtlGetProcessHeap(), 0,
                                            pldr->FullDllName.Length + extra_len + sizeof(WCHAR) )))
        {
            memcpy( str->Buffer, pldr->FullDllName.Buffer, pldr->FullDllName.Length + sizeof(WCHAR) );
            str->Length = pldr->FullDllName.Length;
            str->MaximumLength = pldr->FullDllName.Length + extra_len + sizeof(WCHAR);
        }
        else status = STATUS_NO_MEMORY;
    }
    LdrUnlockLoaderLock(0, magic);
    return status;
}
