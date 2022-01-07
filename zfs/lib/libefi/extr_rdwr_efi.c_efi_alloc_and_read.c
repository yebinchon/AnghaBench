
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dk_part {int dummy; } ;
struct dk_gpt {int efi_nparts; } ;
typedef int efi_gpe_t ;


 int EFI_MIN_ARRAY_SIZE ;
 int VT_EINVAL ;
 int VT_ERROR ;
 struct dk_gpt* calloc (int,int) ;
 scalar_t__ efi_debug ;
 int efi_read (int,struct dk_gpt*) ;
 int fprintf (int ,char*,int) ;
 int free (struct dk_gpt*) ;
 void* realloc (struct dk_gpt*,int) ;
 int stderr ;

int
efi_alloc_and_read(int fd, struct dk_gpt **vtoc)
{
 int rval;
 uint32_t nparts;
 int length;


 nparts = EFI_MIN_ARRAY_SIZE / sizeof (efi_gpe_t);
 length = (int) sizeof (struct dk_gpt) +
     (int) sizeof (struct dk_part) * (nparts - 1);
 if ((*vtoc = calloc(1, length)) == ((void*)0))
  return (VT_ERROR);

 (*vtoc)->efi_nparts = nparts;
 rval = efi_read(fd, *vtoc);

 if ((rval == VT_EINVAL) && (*vtoc)->efi_nparts > nparts) {
  void *tmp;
  length = (int) sizeof (struct dk_gpt) +
      (int) sizeof (struct dk_part) *
      ((*vtoc)->efi_nparts - 1);
  nparts = (*vtoc)->efi_nparts;
  if ((tmp = realloc(*vtoc, length)) == ((void*)0)) {
   free (*vtoc);
   *vtoc = ((void*)0);
   return (VT_ERROR);
  } else {
   *vtoc = tmp;
   rval = efi_read(fd, *vtoc);
  }
 }

 if (rval < 0) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "read of EFI table failed, rval=%d\n", rval);
  }
  free (*vtoc);
  *vtoc = ((void*)0);
 }

 return (rval);
}
