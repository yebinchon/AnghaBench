
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msf_t ;
typedef int lba_t ;


 int cdio_assert (int) ;
 int cdio_lba_to_lsn (int ) ;
 int cdio_lsn_to_msf (int ,int *) ;

void
cdio_lba_to_msf (lba_t lba, msf_t *msf)
{
  cdio_assert (msf != 0);
  cdio_lsn_to_msf(cdio_lba_to_lsn(lba), msf);
}
