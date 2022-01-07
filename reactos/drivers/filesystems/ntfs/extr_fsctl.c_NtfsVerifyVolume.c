
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIRP ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int DPRINT1 (char*) ;
 int STATUS_WRONG_VOLUME ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static
NTSTATUS
NtfsVerifyVolume(PDEVICE_OBJECT DeviceObject,
                 PIRP Irp)
{
    UNREFERENCED_PARAMETER(DeviceObject);
    UNREFERENCED_PARAMETER(Irp);
    DPRINT1("NtfsVerifyVolume() called\n");
    return STATUS_WRONG_VOLUME;
}
