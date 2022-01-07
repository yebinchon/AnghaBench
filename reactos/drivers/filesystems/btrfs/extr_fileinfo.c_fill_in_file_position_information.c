
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int CurrentByteOffset; } ;
struct TYPE_6__ {int CurrentByteOffset; } ;
typedef TYPE_1__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_2__ FILE_POSITION_INFORMATION ;


 int RtlZeroMemory (TYPE_2__*,int) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS fill_in_file_position_information(FILE_POSITION_INFORMATION* fpi, PFILE_OBJECT FileObject, LONG* length) {
    RtlZeroMemory(fpi, sizeof(FILE_POSITION_INFORMATION));

    *length -= sizeof(FILE_POSITION_INFORMATION);

    fpi->CurrentByteOffset = FileObject->CurrentByteOffset;

    return STATUS_SUCCESS;
}
