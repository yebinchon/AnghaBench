
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_5__ {size_t (* writeString ) (TYPE_2__*,char const*,size_t) ;} ;
typedef TYPE_2__ THFile ;


 size_t stub1 (TYPE_2__*,char const*,size_t) ;

size_t THFile_writeStringRaw(THFile *self, const char *str, size_t size)
{
  return self->vtable->writeString(self, str, size);
}
