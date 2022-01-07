
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * (* get_cdtext_raw ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo ;


 int * stub1 (int ) ;

uint8_t *
cdio_get_cdtext_raw (CdIo *obj)
{
  if (obj == ((void*)0)) return ((void*)0);

  if (((void*)0) != obj->op.get_cdtext_raw) {
    return obj->op.get_cdtext_raw (obj->env);
  } else {
    return ((void*)0);
  }
}
