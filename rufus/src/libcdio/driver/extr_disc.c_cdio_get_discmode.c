
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int discmode_t ;
struct TYPE_4__ {int (* get_discmode ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_DISC_MODE_ERROR ;
 int CDIO_DISC_MODE_NO_INFO ;
 int stub1 (int ) ;

discmode_t
cdio_get_discmode (CdIo_t *cd_obj)
{
  if (!cd_obj) return CDIO_DISC_MODE_ERROR;

  if (cd_obj->op.get_discmode) {
    return cd_obj->op.get_discmode (cd_obj->env);
  } else {
    return CDIO_DISC_MODE_NO_INFO;
  }
}
