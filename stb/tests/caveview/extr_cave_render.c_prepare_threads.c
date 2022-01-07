
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* chunk_server_done_processing; void* request_received; } ;
typedef TYPE_1__ mesh_worker ;


 int MAX_MESH_WORKERS ;
 void* SDL_CreateSemaphore (int ) ;
 int SDL_CreateThread (int ,char*,TYPE_1__*) ;
 int SDL_GetCPUCount () ;
 TYPE_1__* mesh_data ;
 int mesh_worker_handler ;
 int num_mesh_workers ;

void prepare_threads(void)
{
   int i;
   int num_proc = SDL_GetCPUCount();

   if (num_proc > 6)
      num_mesh_workers = num_proc/2;
   else if (num_proc > 4)
      num_mesh_workers = 4;
   else
      num_mesh_workers = num_proc-1;
   num_mesh_workers *= 2;

   if (num_mesh_workers > MAX_MESH_WORKERS)
      num_mesh_workers = MAX_MESH_WORKERS;

   for (i=0; i < num_mesh_workers; ++i) {
      mesh_worker *data = &mesh_data[i];
      data->request_received = SDL_CreateSemaphore(0);
      data->chunk_server_done_processing = SDL_CreateSemaphore(0);
      SDL_CreateThread(mesh_worker_handler, "mesh worker", data);
   }
}
