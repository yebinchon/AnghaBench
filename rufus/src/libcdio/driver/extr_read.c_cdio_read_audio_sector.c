
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsn_t ;
typedef int driver_return_code_t ;
struct TYPE_4__ {int (* read_audio_sectors ) (int ,void*,int ,int) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_UNSUPPORTED ;
 int check_lsn (int ) ;
 int stub1 (int ,void*,int ,int) ;

driver_return_code_t
cdio_read_audio_sector (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn)
{
  check_lsn(i_lsn);
  if (p_cdio->op.read_audio_sectors)
    return p_cdio->op.read_audio_sectors (p_cdio->env, p_buf, i_lsn, 1);
  return DRIVER_OP_UNSUPPORTED;
}
