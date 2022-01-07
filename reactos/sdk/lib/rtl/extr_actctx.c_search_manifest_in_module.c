
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef int ULONG ;
struct TYPE_3__ {int Size; } ;
typedef void* PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef int LPCWSTR ;
typedef int IMAGE_RESOURCE_DIRECTORY ;
typedef TYPE_1__ IMAGE_RESOURCE_DATA_ENTRY ;
typedef int HANDLE ;
typedef int BOOL ;


 int IMAGE_DIRECTORY_ENTRY_RESOURCE ;
 scalar_t__ LdrAccessResource (int ,TYPE_1__*,void**,int *) ;
 scalar_t__ RT_MANIFEST ;
 void* RtlImageDirectoryEntryToData (int ,int ,int ,int*) ;
 scalar_t__ STATUS_RESOURCE_DATA_NOT_FOUND ;
 scalar_t__ STATUS_RESOURCE_TYPE_NOT_FOUND ;
 scalar_t__ STATUS_SUCCESS ;
 int TRUE ;
 void* find_entry_by_name (int *,int ,void*,int) ;
 void* find_first_entry (int *,void*,int ) ;
 void* find_first_id_entry (int *,void*,int) ;
 scalar_t__ parse_manifest (struct actctx_loader*,struct assembly_identity*,int ,int ,int ,void*,int ) ;

__attribute__((used)) static NTSTATUS search_manifest_in_module( struct actctx_loader* acl, struct assembly_identity* ai,
                                       LPCWSTR filename, LPCWSTR directory, BOOL shared,
                                       HANDLE hModule, ULONG lang )
{
    ULONG size;
    PVOID root, ptr;
    IMAGE_RESOURCE_DIRECTORY *resdirptr;
    IMAGE_RESOURCE_DATA_ENTRY *entry;
    NTSTATUS status;

    root = RtlImageDirectoryEntryToData(hModule, TRUE, IMAGE_DIRECTORY_ENTRY_RESOURCE, &size);
    if (!root) return STATUS_RESOURCE_DATA_NOT_FOUND;
    if (size < sizeof(*resdirptr)) return STATUS_RESOURCE_DATA_NOT_FOUND;
    resdirptr = root;

    if (!(ptr = find_entry_by_name(resdirptr, (LPCWSTR)RT_MANIFEST, root, 1)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    resdirptr = ptr;
    if (!(ptr = find_first_id_entry(resdirptr, root, 1)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    resdirptr = ptr;
    if (!(ptr = find_first_entry(resdirptr, root, 0)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    entry = ptr;
    status = LdrAccessResource(hModule, entry, &ptr, ((void*)0));

    if (status == STATUS_SUCCESS)
        status = parse_manifest(acl, ai, filename, directory, shared, ptr, entry->Size);

    return status;
}
