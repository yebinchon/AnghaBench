
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_5__ {int (* synchronize ) (TYPE_2__*) ;} ;
typedef TYPE_2__ THFile ;


 int stub1 (TYPE_2__*) ;

void THFile_synchronize(THFile *self)
{
  self->vtable->synchronize(self);
}
