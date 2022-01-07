
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int loff_t ;
typedef int geom ;
struct TYPE_8__ {scalar_t__ nFileSizeLow; scalar_t__ nFileSizeHigh; } ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_7__ {int TracksPerCylinder; int SectorsPerTrack; TYPE_1__ Cylinders; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ DISK_GEOMETRY ;
typedef TYPE_3__ BY_HANDLE_FILE_INFORMATION ;


 int BLOCK_SIZE ;
 int DeviceIoControl (int ,int ,int *,int ,TYPE_2__*,int,int *,int *) ;
 int GetFileInformationByHandle (int ,TYPE_3__*) ;
 int GetLastError () ;
 int IOCTL_DISK_GET_DRIVE_GEOMETRY ;
 int O_RDONLY ;
 int close (int) ;
 int die (char*) ;
 int errno ;
 int exit (int) ;
 scalar_t__ is_device ;
 int open (char*,int ) ;
 int perror (char*) ;
 scalar_t__ valid_offset (int,int const) ;

__attribute__((used)) static int
count_blocks (char *filename)
{
  loff_t high, low;
  int fd;

  if ((fd = open (filename, O_RDONLY)) < 0)
    {
      perror (filename);
      exit (1);
    }
  low = 0;

  for (high = 1; valid_offset (fd, high); high *= 2)
    low = high;
  while (low < high - 1)
    {
      const loff_t mid = (low + high) / 2;

      if (valid_offset (fd, mid))
 low = mid;
      else
 high = mid;
    }
  valid_offset (fd, 0);
  close (fd);

  return (low + 1) / BLOCK_SIZE;

}
