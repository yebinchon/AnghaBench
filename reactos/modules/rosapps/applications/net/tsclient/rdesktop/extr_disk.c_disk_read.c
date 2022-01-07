
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_5__ {TYPE_1__* fileinfo; } ;
struct TYPE_4__ {int flags_and_attributes; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;



 int FILE_DIRECTORY_FILE ;
 int SEEK_SET ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int errno ;
 int lseek (size_t,int,int ) ;
 int perror (char*) ;
 int read (size_t,int *,int) ;

__attribute__((used)) static NTSTATUS
disk_read(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 int n;
 lseek(handle, offset, SEEK_SET);

 n = read(handle, data, length);

 if (n < 0)
 {
  *result = 0;
  switch (errno)
  {
   case 128:



    return STATUS_NOT_IMPLEMENTED;
   default:
    perror("read");
    return STATUS_INVALID_PARAMETER;
  }
 }

 *result = n;

 return STATUS_SUCCESS;
}
