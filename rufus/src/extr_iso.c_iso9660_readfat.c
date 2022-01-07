
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ lsn_t ;
typedef int libfat_sector_t ;
struct TYPE_3__ {int sec_start; int * buf; scalar_t__ lsn; int p_iso; } ;
typedef TYPE_1__ iso9660_readfat_private ;
struct TYPE_4__ {size_t efi_img_path; } ;


 int ISO_BLOCKSIZE ;
 int ISO_NB_BLOCKS ;
 TYPE_2__ img_report ;
 int iso9660_iso_seek_read (int ,int *,scalar_t__,int) ;
 int memcpy (void*,int *,size_t) ;
 int uprintf (char*,size_t,unsigned long) ;

int iso9660_readfat(intptr_t pp, void *buf, size_t secsize, libfat_sector_t sec)
{
 iso9660_readfat_private* p_private = (iso9660_readfat_private*)pp;

 if (sizeof(p_private->buf) % secsize != 0) {
  uprintf("iso9660_readfat: Sector size %d is not a divisor of %d", secsize, sizeof(p_private->buf));
  return 0;
 }

 if ((sec < p_private->sec_start) || (sec >= p_private->sec_start + sizeof(p_private->buf) / secsize)) {

  p_private->sec_start = (((sec * secsize) / ISO_BLOCKSIZE) * ISO_BLOCKSIZE) / secsize;
  if (iso9660_iso_seek_read(p_private->p_iso, p_private->buf,
   p_private->lsn + (lsn_t)((p_private->sec_start * secsize) / ISO_BLOCKSIZE), ISO_NB_BLOCKS)
   != ISO_NB_BLOCKS * ISO_BLOCKSIZE) {
   uprintf("Error reading ISO-9660 file %s at LSN %lu\n", img_report.efi_img_path,
    (long unsigned int)(p_private->lsn + (p_private->sec_start * secsize) / ISO_BLOCKSIZE));
   return 0;
  }
 }
 memcpy(buf, &p_private->buf[(sec - p_private->sec_start)*secsize], secsize);
 return (int)secsize;
}
