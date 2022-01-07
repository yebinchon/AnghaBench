
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int printf (char*,int) ;
 int unimpl (char*,int) ;

__attribute__((used)) static NTSTATUS
disk_device_control(RDPCLIENT * This, NTHANDLE handle, uint32 request, STREAM in, STREAM out)
{
 if (((request >> 16) != 20) || ((request >> 16) != 9))
  return STATUS_INVALID_PARAMETER;


 request >>= 2;
 request &= 0xfff;

 printf("DISK IOCTL %d\n", request);

 switch (request)
 {
  case 25:
  case 42:
  default:
   unimpl("DISK IOCTL %d\n", request);
   return STATUS_INVALID_PARAMETER;
 }

 return STATUS_SUCCESS;
}
