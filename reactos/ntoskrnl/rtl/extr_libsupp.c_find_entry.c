
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Name; scalar_t__ Type; } ;
typedef int PVOID ;
typedef int NTSTATUS ;
typedef int LPCWSTR ;
typedef TYPE_1__ LDR_RESOURCE_INFO ;
typedef void IMAGE_RESOURCE_DIRECTORY ;


 int IMAGE_DIRECTORY_ENTRY_RESOURCE ;
 void* RtlImageDirectoryEntryToData (int ,int ,int ,int*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_RESOURCE_DATA_NOT_FOUND ;
 int STATUS_RESOURCE_NAME_NOT_FOUND ;
 int STATUS_RESOURCE_TYPE_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int TRUE ;
 void* find_entry_by_name (void*,int ,void*,int) ;
 void* find_first_entry (void*,void*,int) ;

NTSTATUS find_entry( PVOID BaseAddress, LDR_RESOURCE_INFO *info,
                     ULONG level, void **ret, int want_dir )
{
    ULONG size;
    void *root;
    IMAGE_RESOURCE_DIRECTORY *resdirptr;

    root = RtlImageDirectoryEntryToData( BaseAddress, TRUE, IMAGE_DIRECTORY_ENTRY_RESOURCE, &size );
    if (!root) return STATUS_RESOURCE_DATA_NOT_FOUND;
    if (size < sizeof(*resdirptr)) return STATUS_RESOURCE_DATA_NOT_FOUND;
    resdirptr = root;

    if (!level--) goto done;
    if (!(*ret = find_entry_by_name( resdirptr, (LPCWSTR)info->Type, root, want_dir || level )))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;

    resdirptr = *ret;
    if (!(*ret = find_entry_by_name( resdirptr, (LPCWSTR)info->Name, root, want_dir || level )))
        return STATUS_RESOURCE_NAME_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;
    if (level) return STATUS_INVALID_PARAMETER;

    resdirptr = *ret;

    if ((*ret = find_first_entry( resdirptr, root, want_dir ))) return STATUS_SUCCESS;

    return STATUS_RESOURCE_DATA_NOT_FOUND;

done:
    *ret = resdirptr;
    return STATUS_SUCCESS;
}
