
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;



 int SEEK_SET ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_DISK_FULL ;
 int STATUS_SUCCESS ;
 int errno ;
 int lseek (int ,int,int ) ;
 int perror (char*) ;
 int write (int ,int *,int) ;

__attribute__((used)) static NTSTATUS
disk_write(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 int n;

 lseek(handle, offset, SEEK_SET);

 n = write(handle, data, length);

 if (n < 0)
 {
  perror("write");
  *result = 0;
  switch (errno)
  {
   case 128:
    return STATUS_DISK_FULL;
   default:
    return STATUS_ACCESS_DENIED;
  }
 }

 *result = n;

 return STATUS_SUCCESS;
}
