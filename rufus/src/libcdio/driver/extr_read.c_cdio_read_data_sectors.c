
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int lsn_t ;
typedef int driver_return_code_t ;
struct TYPE_4__ {int (* read_data_sectors ) (int ,void*,int ,int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_SUCCESS ;
 int DRIVER_OP_UNSUPPORTED ;
 int cdio_debug (char*,int ,int ,int ) ;
 int check_lsn (int ) ;
 int stub1 (int ,void*,int ,int ,int ) ;

driver_return_code_t
cdio_read_data_sectors (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                        uint16_t i_blocksize, uint32_t i_blocks)
{
  check_lsn(i_lsn);

  if (0 == i_blocks) return DRIVER_OP_SUCCESS;

  if (p_cdio->op.read_data_sectors) {
    cdio_debug("Reading data sector(s) lsn, %u blocksize %d, for %d blocks",
               i_lsn, i_blocksize, i_blocks);
    return p_cdio->op.read_data_sectors (p_cdio->env, p_buf, i_lsn,
                                         i_blocksize, i_blocks);
  }
  return DRIVER_OP_UNSUPPORTED;
}
