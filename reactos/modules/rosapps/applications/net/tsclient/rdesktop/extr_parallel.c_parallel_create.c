
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {int handle; int local_path; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int F_SETFL ;
 int LPABORT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int fcntl (int,int ,int ) ;
 int ioctl (int,int ,int) ;
 int open (int ,int ) ;
 int perror (char*) ;

__attribute__((used)) static NTSTATUS
parallel_create(RDPCLIENT * This, uint32 device_id, uint32 access, uint32 share_mode, uint32 disposition,
  uint32 flags, char *filename, NTHANDLE * handle)
{
 int parallel_fd;

 parallel_fd = open(This->rdpdr_device[device_id].local_path, O_RDWR);
 if (parallel_fd == -1)
 {
  perror("open");
  return STATUS_ACCESS_DENIED;
 }


 if (fcntl(parallel_fd, F_SETFL, O_NONBLOCK) == -1)
  perror("fcntl");






 This->rdpdr_device[device_id].handle = parallel_fd;

 *handle = parallel_fd;

 return STATUS_SUCCESS;
}
