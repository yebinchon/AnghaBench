
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_3__ {int Version; int SizeOfCompleteStructure; int FileSystemType; } ;
typedef int NTSTATUS ;
typedef TYPE_1__ FILESYSTEM_STATISTICS ;
typedef int DWORD ;


 int FILESYSTEM_STATISTICS_TYPE_NTFS ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int WARN (char*) ;

__attribute__((used)) static NTSTATUS fs_get_statistics(void* buffer, DWORD buflen, ULONG_PTR* retlen) {
    FILESYSTEM_STATISTICS* fss;

    WARN("STUB: FSCTL_FILESYSTEM_GET_STATISTICS\n");



    if (buflen < sizeof(FILESYSTEM_STATISTICS))
        return STATUS_BUFFER_TOO_SMALL;

    fss = buffer;
    RtlZeroMemory(fss, sizeof(FILESYSTEM_STATISTICS));

    fss->Version = 1;
    fss->FileSystemType = FILESYSTEM_STATISTICS_TYPE_NTFS;
    fss->SizeOfCompleteStructure = sizeof(FILESYSTEM_STATISTICS);

    *retlen = sizeof(FILESYSTEM_STATISTICS);

    return STATUS_SUCCESS;
}
