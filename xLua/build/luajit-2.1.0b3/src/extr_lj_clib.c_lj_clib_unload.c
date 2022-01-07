
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ CLibrary ;


 int clib_unloadlib (TYPE_1__*) ;

void lj_clib_unload(CLibrary *cl)
{
  clib_unloadlib(cl);
  cl->handle = ((void*)0);
}
