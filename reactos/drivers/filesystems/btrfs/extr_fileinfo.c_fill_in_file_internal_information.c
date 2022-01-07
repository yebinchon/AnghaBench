
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inode; int subvol; } ;
typedef TYPE_2__ fcb ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_8__ {TYPE_1__ IndexNumber; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_3__ FILE_INTERNAL_INFORMATION ;


 int STATUS_SUCCESS ;
 int make_file_id (int ,int ) ;

__attribute__((used)) static NTSTATUS fill_in_file_internal_information(FILE_INTERNAL_INFORMATION* fii, fcb* fcb, LONG* length) {
    *length -= sizeof(FILE_INTERNAL_INFORMATION);

    fii->IndexNumber.QuadPart = make_file_id(fcb->subvol, fcb->inode);

    return STATUS_SUCCESS;
}
