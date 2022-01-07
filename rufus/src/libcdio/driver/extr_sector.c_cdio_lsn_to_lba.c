
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lsn_t ;
typedef scalar_t__ lba_t ;


 scalar_t__ CDIO_INVALID_LBA ;
 scalar_t__ CDIO_INVALID_LSN ;
 scalar_t__ CDIO_PREGAP_SECTORS ;

lba_t
cdio_lsn_to_lba (lsn_t lsn)
{
  if (CDIO_INVALID_LSN == lsn) return CDIO_INVALID_LBA;
  return lsn + CDIO_PREGAP_SECTORS;
}
