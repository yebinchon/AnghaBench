
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ QuadPart; } ;
struct TYPE_4__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int NumberOfLinks; void* Directory; void* DeletePending; TYPE_2__ EndOfFile; TYPE_1__ AllocationSize; } ;
typedef scalar_t__ PVOID ;
typedef int* PSIZE_T ;
typedef TYPE_3__* PFILE_STANDARD_INFORMATION ;
typedef int NTSTATUS ;
typedef int FILE_STANDARD_INFORMATION ;
typedef scalar_t__ FILE_INFORMATION_CLASS ;


 void* FALSE ;
 scalar_t__ FileStandardInformation ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_INFO_CLASS ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
KsecQueryFileInformation(
    PVOID InfoBuffer,
    FILE_INFORMATION_CLASS FileInformationClass,
    PSIZE_T BufferLength)
{
    PFILE_STANDARD_INFORMATION StandardInformation;


    if (FileInformationClass != FileStandardInformation)
    {
        return STATUS_INVALID_INFO_CLASS;
    }


    if (*BufferLength < sizeof(FILE_STANDARD_INFORMATION))
    {
        *BufferLength = sizeof(FILE_STANDARD_INFORMATION);
        return STATUS_INFO_LENGTH_MISMATCH;
    }


    StandardInformation = (PFILE_STANDARD_INFORMATION)InfoBuffer;
    StandardInformation->AllocationSize.QuadPart = 0;
    StandardInformation->EndOfFile.QuadPart = 0;
    StandardInformation->NumberOfLinks = 1;
    StandardInformation->DeletePending = FALSE;
    StandardInformation->Directory = FALSE;
    *BufferLength = sizeof(FILE_STANDARD_INFORMATION);

    return STATUS_SUCCESS;
}
