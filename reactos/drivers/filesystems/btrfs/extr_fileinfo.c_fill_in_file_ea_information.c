
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ealen; } ;
typedef TYPE_1__ fcb ;
struct TYPE_6__ {int EaSize; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_2__ FILE_EA_INFORMATION ;


 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS fill_in_file_ea_information(FILE_EA_INFORMATION* eai, fcb* fcb, LONG* length) {
    *length -= sizeof(FILE_EA_INFORMATION);






    eai->EaSize = fcb->ealen;

    return STATUS_SUCCESS;
}
