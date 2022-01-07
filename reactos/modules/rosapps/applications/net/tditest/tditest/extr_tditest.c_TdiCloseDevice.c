
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef scalar_t__ HANDLE ;


 int ObDereferenceObject (scalar_t__) ;
 int STATUS_SUCCESS ;
 int ZwClose (scalar_t__) ;

NTSTATUS TdiCloseDevice(
    HANDLE Handle,
    PFILE_OBJECT FileObject)
{
 if (FileObject)
  ObDereferenceObject(FileObject);

 if (Handle)
  ZwClose(Handle);

 return STATUS_SUCCESS;
}
