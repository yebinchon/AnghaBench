
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int len_t ;
struct TYPE_5__ {scalar_t__ efi_gpt_Signature; int efi_gpt_HeaderCRC32; int efi_gpt_HeaderSize; } ;
typedef TYPE_1__ efi_gpt_t ;
struct TYPE_6__ {int dki_length; TYPE_1__* dki_data; } ;
typedef TYPE_2__ dk_efi_t ;


 int DKIOCGETEFI ;
 int EFI_LABEL_SIZE ;
 int EFI_MIN_LABEL_SIZE ;
 int EFI_SIGNATURE ;

 int LE_32 (int ) ;
 scalar_t__ LE_64 (int ) ;
 int VT_EINVAL ;
 int VT_EIO ;
 int VT_ERROR ;
 int efi_crc32 (unsigned char*,int) ;
 scalar_t__ efi_debug ;
 int efi_ioctl (int,int ,TYPE_2__*) ;
 int errno ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static int
check_label(int fd, dk_efi_t *dk_ioc)
{
 efi_gpt_t *efi;
 uint_t crc;

 if (efi_ioctl(fd, DKIOCGETEFI, dk_ioc) == -1) {
  switch (errno) {
  case 128:
   return (VT_EIO);
  default:
   return (VT_ERROR);
  }
 }
 efi = dk_ioc->dki_data;
 if (efi->efi_gpt_Signature != LE_64(EFI_SIGNATURE)) {
  if (efi_debug)
   (void) fprintf(stderr,
       "Bad EFI signature: 0x%llx != 0x%llx\n",
       (long long)efi->efi_gpt_Signature,
       (long long)LE_64(EFI_SIGNATURE));
  return (VT_EINVAL);
 }





 crc = efi->efi_gpt_HeaderCRC32;
 efi->efi_gpt_HeaderCRC32 = 0;
 len_t headerSize = (len_t)LE_32(efi->efi_gpt_HeaderSize);

 if (headerSize < EFI_MIN_LABEL_SIZE || headerSize > EFI_LABEL_SIZE) {
  if (efi_debug)
   (void) fprintf(stderr,
       "Invalid EFI HeaderSize %llu.  Assuming %d.\n",
       headerSize, EFI_MIN_LABEL_SIZE);
 }

 if ((headerSize > dk_ioc->dki_length) ||
     crc != LE_32(efi_crc32((unsigned char *)efi, headerSize))) {
  if (efi_debug)
   (void) fprintf(stderr,
       "Bad EFI CRC: 0x%x != 0x%x\n",
       crc, LE_32(efi_crc32((unsigned char *)efi,
       headerSize)));
  return (VT_EINVAL);
 }

 return (0);
}
