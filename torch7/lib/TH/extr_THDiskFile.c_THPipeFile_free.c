
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; scalar_t__ handle; } ;
typedef int THFile ;
typedef TYPE_1__ THDiskFile ;


 int THFree (TYPE_1__*) ;
 int pclose (scalar_t__) ;

__attribute__((used)) static void THPipeFile_free(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  if(dfself->handle)
    pclose(dfself->handle);
  THFree(dfself->name);
  THFree(dfself);
}
