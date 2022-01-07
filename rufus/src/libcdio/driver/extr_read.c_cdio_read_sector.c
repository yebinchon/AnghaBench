
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsn_t ;
typedef int driver_return_code_t ;
typedef int cdio_read_mode_t ;
typedef int CdIo_t ;


 int cdio_read_sectors (int const*,void*,int ,int ,int) ;

driver_return_code_t
cdio_read_sector(const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                 cdio_read_mode_t read_mode)
{
  return cdio_read_sectors(p_cdio, p_buf, i_lsn, read_mode, 1);
}
