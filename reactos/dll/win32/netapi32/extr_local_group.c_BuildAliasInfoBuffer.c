
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_8__ {int Length; int Buffer; } ;
struct TYPE_7__ {int Length; int Buffer; } ;
struct TYPE_11__ {TYPE_2__ AdminComment; TYPE_1__ Name; } ;
struct TYPE_10__ {void** lgrpi0_name; } ;
struct TYPE_9__ {void** lgrpi1_comment; void** lgrpi1_name; } ;
typedef TYPE_3__* PLOCALGROUP_INFO_1 ;
typedef TYPE_4__* PLOCALGROUP_INFO_0 ;
typedef TYPE_5__* PALIAS_GENERAL_INFORMATION ;
typedef scalar_t__ NET_API_STATUS ;
typedef void* LPWSTR ;
typedef int * LPVOID ;
typedef int LOCALGROUP_INFO_1 ;
typedef int LOCALGROUP_INFO_0 ;
typedef int DWORD ;


 scalar_t__ ERROR_INVALID_LEVEL ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetApiBufferAllocate (int ,int **) ;
 int NetApiBufferFree (int *) ;
 void* UNICODE_NULL ;
 int ZeroMemory (int *,int ) ;
 int memcpy (void**,int ,int) ;

__attribute__((used)) static
NET_API_STATUS
BuildAliasInfoBuffer(PALIAS_GENERAL_INFORMATION AliasInfo,
                     DWORD level,
                     LPVOID *Buffer)
{
    LPVOID LocalBuffer = ((void*)0);
    PLOCALGROUP_INFO_0 LocalInfo0;
    PLOCALGROUP_INFO_1 LocalInfo1;
    LPWSTR Ptr;
    ULONG Size = 0;
    NET_API_STATUS ApiStatus = NERR_Success;

    *Buffer = ((void*)0);

    switch (level)
    {
        case 0:
            Size = sizeof(LOCALGROUP_INFO_0) +
                   AliasInfo->Name.Length + sizeof(WCHAR);
            break;

        case 1:
            Size = sizeof(LOCALGROUP_INFO_1) +
                   AliasInfo->Name.Length + sizeof(WCHAR) +
                   AliasInfo->AdminComment.Length + sizeof(WCHAR);
            break;

        default:
            ApiStatus = ERROR_INVALID_LEVEL;
            goto done;
    }

    ApiStatus = NetApiBufferAllocate(Size, &LocalBuffer);
    if (ApiStatus != NERR_Success)
        goto done;

    ZeroMemory(LocalBuffer, Size);

    switch (level)
    {
        case 0:
            LocalInfo0 = (PLOCALGROUP_INFO_0)LocalBuffer;

            Ptr = (LPWSTR)((ULONG_PTR)LocalInfo0 + sizeof(LOCALGROUP_INFO_0));
            LocalInfo0->lgrpi0_name = Ptr;

            memcpy(LocalInfo0->lgrpi0_name,
                   AliasInfo->Name.Buffer,
                   AliasInfo->Name.Length);
            LocalInfo0->lgrpi0_name[AliasInfo->Name.Length / sizeof(WCHAR)] = UNICODE_NULL;
            break;

        case 1:
            LocalInfo1 = (PLOCALGROUP_INFO_1)LocalBuffer;

            Ptr = (LPWSTR)((ULONG_PTR)LocalInfo1 + sizeof(LOCALGROUP_INFO_1));
            LocalInfo1->lgrpi1_name = Ptr;

            memcpy(LocalInfo1->lgrpi1_name,
                   AliasInfo->Name.Buffer,
                   AliasInfo->Name.Length);
            LocalInfo1->lgrpi1_name[AliasInfo->Name.Length / sizeof(WCHAR)] = UNICODE_NULL;

            Ptr = (LPWSTR)((ULONG_PTR)Ptr + AliasInfo->Name.Length + sizeof(WCHAR));
            LocalInfo1->lgrpi1_comment = Ptr;

            memcpy(LocalInfo1->lgrpi1_comment,
                   AliasInfo->AdminComment.Buffer,
                   AliasInfo->AdminComment.Length);
            LocalInfo1->lgrpi1_comment[AliasInfo->AdminComment.Length / sizeof(WCHAR)] = UNICODE_NULL;
            break;
    }

done:
    if (ApiStatus == NERR_Success)
    {
        *Buffer = LocalBuffer;
    }
    else
    {
        if (LocalBuffer != ((void*)0))
            NetApiBufferFree(LocalBuffer);
    }

    return ApiStatus;
}
