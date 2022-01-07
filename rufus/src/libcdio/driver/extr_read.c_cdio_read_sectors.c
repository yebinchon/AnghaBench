
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lsn_t ;
typedef int driver_return_code_t ;
typedef int cdio_read_mode_t ;
typedef int CdIo_t ;







 int DRIVER_OP_ERROR ;
 int cdio_read_audio_sectors (int const*,void*,int ,int ) ;
 int cdio_read_mode1_sectors (int const*,void*,int ,int,int ) ;
 int cdio_read_mode2_sectors (int const*,void*,int ,int,int ) ;

driver_return_code_t
cdio_read_sectors(const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                  cdio_read_mode_t read_mode, uint32_t i_blocks)
{
  switch(read_mode) {
  case 132:
    return cdio_read_audio_sectors (p_cdio, p_buf, i_lsn, i_blocks);
  case 131:
    return cdio_read_mode1_sectors (p_cdio, p_buf, i_lsn, 0, i_blocks);
  case 130:
    return cdio_read_mode1_sectors (p_cdio, p_buf, i_lsn, 1, i_blocks);
  case 129:
    return cdio_read_mode2_sectors (p_cdio, p_buf, i_lsn, 0, i_blocks);
  case 128:
    return cdio_read_mode2_sectors (p_cdio, p_buf, i_lsn, 1, i_blocks);
  }

  return DRIVER_OP_ERROR;
}
