
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int thread; } ;
typedef TYPE_1__ MuOfficeRender ;
typedef int MuError ;


 int MuError_OK ;
 int mu_destroy_thread (int *) ;

MuError MuOfficeRender_waitUntilComplete(MuOfficeRender *render)
{
 if (!render)
  return MuError_OK;

 mu_destroy_thread(&render->thread);

 return render->error;
}
