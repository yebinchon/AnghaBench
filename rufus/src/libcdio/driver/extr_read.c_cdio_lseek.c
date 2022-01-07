
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int (* lseek ) (int ,int ,int) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_UNINIT ;
 int DRIVER_OP_UNSUPPORTED ;
 int stub1 (int ,int ,int) ;

off_t
cdio_lseek (const CdIo_t *p_cdio, off_t offset, int whence)
{
  if (!p_cdio) return DRIVER_OP_UNINIT;

  if (p_cdio->op.lseek)
    return (p_cdio->op.lseek) (p_cdio->env, offset, whence);
  return DRIVER_OP_UNSUPPORTED;
}
