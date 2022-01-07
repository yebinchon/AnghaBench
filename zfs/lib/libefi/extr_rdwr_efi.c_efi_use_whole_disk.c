
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_t ;
struct dk_gpt {int efi_nparts; int efi_first_u_lba; int efi_last_lba; int efi_altern_lba; int efi_last_u_lba; TYPE_1__* efi_parts; } ;
typedef scalar_t__ diskaddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ p_start; scalar_t__ p_size; scalar_t__ p_tag; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EFI_MIN_RESV_SIZE ;
 scalar_t__ P2ALIGN (int,int ) ;
 int PARTITION_END_ALIGNMENT ;
 int VT_EINVAL ;
 int VT_ENOSPC ;
 scalar_t__ V_RESERVED ;
 int efi_alloc_and_read (int,struct dk_gpt**) ;
 scalar_t__ efi_debug ;
 int efi_free (struct dk_gpt*) ;
 int efi_write (int,struct dk_gpt*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int
efi_use_whole_disk(int fd)
{
 struct dk_gpt *efi_label = ((void*)0);
 int rval;
 int i;
 uint_t resv_index = 0, data_index = 0;
 diskaddr_t resv_start = 0, data_start = 0;
 diskaddr_t data_size, limit, difference;
 boolean_t sync_needed = B_FALSE;
 uint_t nblocks;

 rval = efi_alloc_and_read(fd, &efi_label);
 if (rval < 0) {
  if (efi_label != ((void*)0))
   efi_free(efi_label);
  return (rval);
 }





 for (i = 0; i < efi_label->efi_nparts; i ++) {
  if (resv_start < efi_label->efi_parts[i].p_start) {
   resv_start = efi_label->efi_parts[i].p_start;
   resv_index = i;
  }
 }





 for (i = 0; i < resv_index; i ++) {
  if (data_start < efi_label->efi_parts[i].p_start) {
   data_start = efi_label->efi_parts[i].p_start;
   data_index = i;
  }
 }
 data_size = efi_label->efi_parts[data_index].p_size;





 nblocks = efi_label->efi_first_u_lba - 1;
 limit = P2ALIGN(efi_label->efi_last_lba - nblocks - EFI_MIN_RESV_SIZE,
     PARTITION_END_ALIGNMENT);
 if (data_start + data_size != limit || resv_start != limit)
  sync_needed = B_TRUE;

 if (efi_debug && sync_needed)
  (void) fprintf(stderr, "efi_use_whole_disk: sync needed\n");






 if ((efi_label->efi_altern_lba == 1) || (efi_label->efi_altern_lba
     >= efi_label->efi_last_lba && !sync_needed)) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "efi_use_whole_disk: requested space not found\n");
  }
  efi_free(efi_label);
  return (VT_ENOSPC);
 }







 if ((efi_label->efi_parts[resv_index].p_size != EFI_MIN_RESV_SIZE) ||
     (efi_label->efi_parts[resv_index].p_tag != V_RESERVED) ||
     (resv_index != 8)) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "efi_use_whole_disk: wholedisk not available\n");
  }
  efi_free(efi_label);
  return (VT_ENOSPC);
 }

 if (data_start + data_size != resv_start) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "efi_use_whole_disk: "
       "data_start (%lli) + "
       "data_size (%lli) != "
       "resv_start (%lli)\n",
       data_start, data_size, resv_start);
  }

  return (VT_EINVAL);
 }

 if (limit < resv_start) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "efi_use_whole_disk: "
       "limit (%lli) < resv_start (%lli)\n",
       limit, resv_start);
  }

  return (VT_EINVAL);
 }

 difference = limit - resv_start;

 if (efi_debug)
  (void) fprintf(stderr,
      "efi_use_whole_disk: difference is %lli\n", difference);






 efi_label->efi_parts[data_index].p_size += difference;
 efi_label->efi_parts[resv_index].p_start += difference;
 efi_label->efi_last_u_lba = efi_label->efi_last_lba - nblocks;

 rval = efi_write(fd, efi_label);
 if (rval < 0) {
  if (efi_debug) {
   (void) fprintf(stderr,
       "efi_use_whole_disk:fail to write label, rval=%d\n",
       rval);
  }
  efi_free(efi_label);
  return (rval);
 }

 efi_free(efi_label);
 return (0);
}
