
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int u_joliet_level; } ;
typedef TYPE_1__ generic_img_private_t ;
struct TYPE_5__ {scalar_t__ env; } ;
typedef TYPE_2__ CdIo_t ;



uint8_t
cdio_get_joliet_level(const CdIo_t *p_cdio)
{
  if (!p_cdio) return 0;
  {
    const generic_img_private_t *p_env
      = (generic_img_private_t *) (p_cdio->env);
    return p_env->u_joliet_level;
  }
}
