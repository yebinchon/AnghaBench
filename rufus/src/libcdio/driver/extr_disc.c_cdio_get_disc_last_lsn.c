
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsn_t ;
struct TYPE_4__ {int (* get_disc_last_lsn ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_INVALID_LSN ;
 int stub1 (int ) ;

lsn_t
cdio_get_disc_last_lsn(const CdIo_t *p_cdio)
{
  if (!p_cdio) return CDIO_INVALID_LSN;
  return p_cdio->op.get_disc_last_lsn (p_cdio->env);
}
