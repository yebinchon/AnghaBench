
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dk_gpt {int efi_last_u_lba; TYPE_1__* efi_parts; int efi_nparts; } ;
struct TYPE_4__ {int p_flag; int p_tag; } ;
struct TYPE_3__ {int p_start; int p_size; int p_tag; int p_flag; } ;


 int EFI_NUMPAR ;
 int MIN (int ,int ) ;
 int V_NUMPAR ;
 int V_RESERVED ;
 int V_UNASSIGNED ;
 TYPE_2__* default_vtoc_map ;
 scalar_t__ efi_alloc_and_init (int,int ,struct dk_gpt**) ;
 scalar_t__ efi_debug ;
 int fprintf (int ,char*) ;
 int stderr ;

int
efi_auto_sense(int fd, struct dk_gpt **vtoc)
{

 int i;




 if (efi_alloc_and_init(fd, EFI_NUMPAR, vtoc) != 0) {
  if (efi_debug) {
   (void) fprintf(stderr, "efi_alloc_and_init failed.\n");
  }
  return (-1);
 }

 for (i = 0; i < MIN((*vtoc)->efi_nparts, V_NUMPAR); i++) {
  (*vtoc)->efi_parts[i].p_tag = default_vtoc_map[i].p_tag;
  (*vtoc)->efi_parts[i].p_flag = default_vtoc_map[i].p_flag;
  (*vtoc)->efi_parts[i].p_start = 0;
  (*vtoc)->efi_parts[i].p_size = 0;
 }






 (*vtoc)->efi_parts[0].p_start = 34;
 (*vtoc)->efi_parts[0].p_size = 262144;


 (*vtoc)->efi_parts[1].p_start = 262178;
 (*vtoc)->efi_parts[1].p_size = 262144;


 (*vtoc)->efi_parts[2].p_tag = V_UNASSIGNED;


 (*vtoc)->efi_parts[6].p_start = 524322;
 (*vtoc)->efi_parts[6].p_size = (*vtoc)->efi_last_u_lba - 524322
     - (1024 * 16);


 (*vtoc)->efi_parts[8].p_start = (*vtoc)->efi_last_u_lba - (1024 * 16);
 (*vtoc)->efi_parts[8].p_size = (1024 * 16);
 (*vtoc)->efi_parts[8].p_tag = V_RESERVED;
 return (0);
}
