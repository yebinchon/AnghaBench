
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_gpt {int dummy; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EFI_NUMPAR ;
 int O_DIRECT ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ efi_alloc_and_init (int,int ,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 int open (char const*,int) ;

boolean_t
zfs_dev_is_whole_disk(const char *dev_name)
{
 struct dk_gpt *label;
 int fd;

 if ((fd = open(dev_name, O_RDONLY | O_DIRECT)) < 0)
  return (B_FALSE);

 if (efi_alloc_and_init(fd, EFI_NUMPAR, &label) != 0) {
  (void) close(fd);
  return (B_FALSE);
 }

 efi_free(label);
 (void) close(fd);

 return (B_TRUE);
}
