
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int thread; } ;
typedef TYPE_1__ MuOfficeRender ;


 int MuOfficeRender_abort (TYPE_1__*) ;
 int Pal_Mem_free (TYPE_1__*) ;
 int mu_destroy_thread (int *) ;

void MuOfficeRender_destroy(MuOfficeRender *render)
{
 if (!render)
  return;

 MuOfficeRender_abort(render);
 mu_destroy_thread(&render->thread);
 Pal_Mem_free(render);
}
