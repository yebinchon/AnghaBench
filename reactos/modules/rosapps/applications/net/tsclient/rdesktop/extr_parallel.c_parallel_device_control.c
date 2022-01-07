
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int FILE_DEVICE_PARALLEL ;

 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int printf (char*,...) ;
 int unimpl (char*,int) ;

__attribute__((used)) static NTSTATUS
parallel_device_control(RDPCLIENT * This, NTHANDLE handle, uint32 request, STREAM in, STREAM out)
{
 if ((request >> 16) != FILE_DEVICE_PARALLEL)
  return STATUS_INVALID_PARAMETER;


 request >>= 2;
 request &= 0xfff;

 printf("PARALLEL IOCTL %d: ", request);

 switch (request)
 {
  case 128:

  default:

   printf("\n");
   unimpl("UNKNOWN IOCTL %d\n", request);
 }
 return STATUS_SUCCESS;
}
