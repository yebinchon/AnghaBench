
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_gpt {int efi_flags; } ;


 int EFI_GPT_PRIMARY_CORRUPT ;
 int EIDRM ;
 int O_DIRECT ;
 int O_RDONLY ;
 int close (int) ;
 int efi_alloc_and_read (int,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 int errno ;
 int open (char*,int) ;

__attribute__((used)) static int
zpool_label_disk_check(char *path)
{
 struct dk_gpt *vtoc;
 int fd, err;

 if ((fd = open(path, O_RDONLY|O_DIRECT)) < 0)
  return (errno);

 if ((err = efi_alloc_and_read(fd, &vtoc)) != 0) {
  (void) close(fd);
  return (err);
 }

 if (vtoc->efi_flags & EFI_GPT_PRIMARY_CORRUPT) {
  efi_free(vtoc);
  (void) close(fd);
  return (EIDRM);
 }

 efi_free(vtoc);
 (void) close(fd);
 return (0);
}
