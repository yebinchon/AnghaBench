
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sm_phys; int * sm_dbuf; } ;
typedef TYPE_1__ space_map_t ;


 int dmu_buf_rele (int *,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;

void
space_map_close(space_map_t *sm)
{
 if (sm == ((void*)0))
  return;

 if (sm->sm_dbuf != ((void*)0))
  dmu_buf_rele(sm->sm_dbuf, sm);
 sm->sm_dbuf = ((void*)0);
 sm->sm_phys = ((void*)0);

 kmem_free(sm, sizeof (*sm));
}
