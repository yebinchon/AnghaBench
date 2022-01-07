
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {int (* read ) (int ,void*,size_t) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_UNINIT ;
 int DRIVER_OP_UNSUPPORTED ;
 int stub1 (int ,void*,size_t) ;

ssize_t
cdio_read (const CdIo_t *p_cdio, void *p_buf, size_t i_size)
{
  if (!p_cdio) return DRIVER_OP_UNINIT;

  if (p_cdio->op.read)
    return (p_cdio->op.read) (p_cdio->env, p_buf, i_size);
  return DRIVER_OP_UNSUPPORTED;
}
