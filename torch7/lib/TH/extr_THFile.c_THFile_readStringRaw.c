
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_5__ {size_t (* readString ) (TYPE_2__*,char const*,char**) ;} ;
typedef TYPE_2__ THFile ;


 size_t stub1 (TYPE_2__*,char const*,char**) ;

size_t THFile_readStringRaw(THFile *self, const char *format, char **str_)
{
  return self->vtable->readString(self, format, str_);
}
