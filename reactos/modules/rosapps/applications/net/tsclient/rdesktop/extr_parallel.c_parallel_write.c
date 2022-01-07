
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;





 int LPGETSTATUS ;
 int STATUS_DEVICE_OFF_LINE ;
 int STATUS_DEVICE_PAPER_EMPTY ;
 int STATUS_DEVICE_POWERED_OFF ;
 int STATUS_SUCCESS ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int printf (char*,int,int) ;
 int write (int ,int *,int) ;

__attribute__((used)) static NTSTATUS
parallel_write(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 int rc = STATUS_SUCCESS;

 int n = write(handle, data, length);
 if (n < 0)
 {




  *result = 0;
  switch (errno)
  {
   case 130:
    rc = STATUS_DEVICE_OFF_LINE;
   case 128:
    rc = STATUS_DEVICE_PAPER_EMPTY;
   case 129:
    rc = STATUS_DEVICE_OFF_LINE;
   default:
    rc = STATUS_DEVICE_POWERED_OFF;
  }







 }
 *result = n;
 return rc;
}
