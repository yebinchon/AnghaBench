
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int dki_lba; int dki_length; void* dki_data; } ;
typedef TYPE_1__ dk_efi_t ;
typedef int diskaddr_t ;


 int BLKFLSBUF ;
 int DEV_BSIZE ;


 int EIO ;
 int SEEK_SET ;
 scalar_t__ efi_debug ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int fsync (int) ;
 int ioctl (int,int ,int ) ;
 int lseek (int,int,int ) ;
 int read (int,void*,int) ;
 int read_disk_info (int,int *,int*) ;
 int stderr ;
 int write (int,void*,int) ;

__attribute__((used)) static int
efi_ioctl(int fd, int cmd, dk_efi_t *dk_ioc)
{
 void *data = dk_ioc->dki_data;
 int error;
 diskaddr_t capacity;
 uint_t lbsize;





 if (read_disk_info(fd, &capacity, &lbsize) == -1) {
  if (efi_debug)
   fprintf(stderr, "unable to read disk info: %d", errno);

  errno = EIO;
  return (-1);
 }

 switch (cmd) {
 case 129:
  if (lbsize == 0) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCGETEFI assuming "
        "LBA %d bytes\n", DEV_BSIZE);

   lbsize = DEV_BSIZE;
  }

  error = lseek(fd, dk_ioc->dki_lba * lbsize, SEEK_SET);
  if (error == -1) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCGETEFI lseek "
        "error: %d\n", errno);
   return (error);
  }

  error = read(fd, data, dk_ioc->dki_length);
  if (error == -1) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCGETEFI read "
        "error: %d\n", errno);
   return (error);
  }

  if (error != dk_ioc->dki_length) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCGETEFI short "
        "read of %d bytes\n", error);
   errno = EIO;
   return (-1);
  }
  error = 0;
  break;

 case 128:
  if (lbsize == 0) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCSETEFI unknown "
        "LBA size\n");
   errno = EIO;
   return (-1);
  }

  error = lseek(fd, dk_ioc->dki_lba * lbsize, SEEK_SET);
  if (error == -1) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCSETEFI lseek "
        "error: %d\n", errno);
   return (error);
  }

  error = write(fd, data, dk_ioc->dki_length);
  if (error == -1) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCSETEFI write "
        "error: %d\n", errno);
   return (error);
  }

  if (error != dk_ioc->dki_length) {
   if (efi_debug)
    (void) fprintf(stderr, "DKIOCSETEFI short "
        "write of %d bytes\n", error);
   errno = EIO;
   return (-1);
  }


  error = fsync(fd);
  if (error == -1)
   return (error);


  if (ioctl(fd, BLKFLSBUF, 0) == -1)
   return (error);

  error = 0;
  break;

 default:
  if (efi_debug)
   (void) fprintf(stderr, "unsupported ioctl()\n");

  errno = EIO;
  return (-1);
 }

 return (error);
}
