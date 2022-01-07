
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int rm; } ;
typedef TYPE_1__ mesh_worker ;


 scalar_t__ WSTATE_idle ;
 scalar_t__ WSTATE_mesh_ready ;
 TYPE_1__* mesh_data ;
 int num_mesh_workers ;
 int num_meshes_uploaded ;
 int upload_mesh_data (int *) ;

void update_meshes_from_render_thread(void)
{
   int i;
   for (i=0; i < num_mesh_workers; ++i) {
      mesh_worker *mw = &mesh_data[i];
      if (mw->state == WSTATE_mesh_ready) {
         upload_mesh_data(&mw->rm);
         ++num_meshes_uploaded;
         mw->state = WSTATE_idle;
      }
   }
}
