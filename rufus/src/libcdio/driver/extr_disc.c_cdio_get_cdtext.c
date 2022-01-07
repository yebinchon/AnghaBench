
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cdtext_t ;
struct TYPE_4__ {int * (* get_cdtext ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo ;


 int * stub1 (int ) ;

cdtext_t *
cdio_get_cdtext (CdIo *obj)
{
  if (obj == ((void*)0)) return ((void*)0);

  if (((void*)0) != obj->op.get_cdtext) {
    return obj->op.get_cdtext (obj->env);
  } else {
    return ((void*)0);
  }
}
