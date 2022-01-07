
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
typedef int THFile ;
typedef TYPE_1__ THDiskFile ;


 int THArgCheck (int ,int,char*) ;
 int fclose (int *) ;

__attribute__((used)) static void THDiskFile_close(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  THArgCheck(dfself->handle != ((void*)0), 1, "attempt to use a closed file");
  fclose(dfself->handle);
  dfself->handle = ((void*)0);
}
