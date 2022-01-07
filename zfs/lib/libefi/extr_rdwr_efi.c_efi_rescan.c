
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKRRPART ;
 scalar_t__ EBUSY ;
 scalar_t__ errno ;
 int fprintf (int ,char*,scalar_t__) ;
 int ioctl (int,int ) ;
 int stderr ;
 int usleep (int) ;

int
efi_rescan(int fd)
{
 int retry = 10;
 int error;


 while ((error = ioctl(fd, BLKRRPART)) != 0) {
  if ((--retry == 0) || (errno != EBUSY)) {
   (void) fprintf(stderr, "the kernel failed to rescan "
       "the partition table: %d\n", errno);
   return (-1);
  }
  usleep(50000);
 }

 return (0);
}
