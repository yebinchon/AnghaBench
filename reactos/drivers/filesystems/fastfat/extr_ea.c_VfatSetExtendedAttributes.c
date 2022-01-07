
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int PFILE_OBJECT ;
typedef int NTSTATUS ;


 int STATUS_EAS_NOT_SUPPORTED ;
 int UNREFERENCED_PARAMETER (int ) ;

NTSTATUS
VfatSetExtendedAttributes(
    PFILE_OBJECT FileObject,
    PVOID Ea,
    ULONG EaLength)
{
    UNREFERENCED_PARAMETER(FileObject);
    UNREFERENCED_PARAMETER(Ea);
    UNREFERENCED_PARAMETER(EaLength);

    return STATUS_EAS_NOT_SUPPORTED;
}
