
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lba_t ;


 scalar_t__ CDIO_INVALID_LBA ;
 scalar_t__ CDIO_INVALID_LSN ;
 scalar_t__ CDIO_PREGAP_SECTORS ;

lba_t
cdio_lba_to_lsn (lba_t lba)
{
  if (CDIO_INVALID_LBA == lba) return CDIO_INVALID_LSN;
  return lba - CDIO_PREGAP_SECTORS;
}
