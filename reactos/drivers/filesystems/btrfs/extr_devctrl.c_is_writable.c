
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ readonly; } ;
typedef TYPE_1__ device_extension ;
typedef int NTSTATUS ;


 int STATUS_MEDIA_WRITE_PROTECTED ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS is_writable(device_extension* Vcb) {
    TRACE("IOCTL_DISK_IS_WRITABLE\n");

    return Vcb->readonly ? STATUS_MEDIA_WRITE_PROTECTED : STATUS_SUCCESS;
}
