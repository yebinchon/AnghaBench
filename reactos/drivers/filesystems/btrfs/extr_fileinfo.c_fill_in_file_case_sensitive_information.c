
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ case_sensitive; } ;
typedef TYPE_1__ fcb ;
struct TYPE_6__ {int Flags; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_2__ FILE_CASE_SENSITIVE_INFORMATION ;


 int FILE_CS_FLAG_CASE_SENSITIVE_DIR ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS fill_in_file_case_sensitive_information(FILE_CASE_SENSITIVE_INFORMATION* fcsi, fcb* fcb, LONG* length) {
    fcsi->Flags = fcb->case_sensitive ? FILE_CS_FLAG_CASE_SENSITIVE_DIR : 0;

    *length -= sizeof(FILE_CASE_SENSITIVE_INFORMATION);

    return STATUS_SUCCESS;
}
