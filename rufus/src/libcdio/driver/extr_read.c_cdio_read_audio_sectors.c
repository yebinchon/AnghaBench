
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lsn_t ;
typedef int driver_return_code_t ;
struct TYPE_4__ {int (* read_audio_sectors ) (int ,void*,int ,scalar_t__) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_SUCCESS ;
 int DRIVER_OP_UNSUPPORTED ;
 int cdio_debug (char*,int ,scalar_t__) ;
 int check_lsn_blocks (int ,scalar_t__) ;
 int stub1 (int ,void*,int ,scalar_t__) ;

driver_return_code_t
cdio_read_audio_sectors (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                         uint32_t i_blocks)
{
  check_lsn_blocks(i_lsn, i_blocks);

  if (0 == i_blocks) return DRIVER_OP_SUCCESS;

  if (p_cdio->op.read_audio_sectors) {
    cdio_debug("Reading audio sector(s) lsn %u for %d blocks",
               i_lsn, i_blocks);
    return (p_cdio->op.read_audio_sectors) (p_cdio->env, p_buf, i_lsn,
                                            i_blocks);
  }
  return DRIVER_OP_UNSUPPORTED;
}
