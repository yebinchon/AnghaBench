
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVFAT_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int DPRINT (char*,int ) ;
 int STATUS_INVALID_DEVICE_REQUEST ;

__attribute__((used)) static
NTSTATUS
VfatGetVolumeBitmap(
    PVFAT_IRP_CONTEXT IrpContext)
{
    DPRINT("VfatGetVolumeBitmap (IrpContext %p)\n", IrpContext);
    return STATUS_INVALID_DEVICE_REQUEST;
}
