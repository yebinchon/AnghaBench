
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msf_t ;
typedef int lba_t ;


 int cdio_lba_to_lsn (int ) ;
 int cdio_msf_to_lba (int const*) ;

lba_t
cdio_msf_to_lsn (const msf_t *msf)
{
  return cdio_lba_to_lsn(cdio_msf_to_lba (msf));
}
