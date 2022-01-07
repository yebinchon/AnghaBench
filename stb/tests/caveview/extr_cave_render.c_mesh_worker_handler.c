
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* face_buffer; void* build_buffer; } ;
struct TYPE_3__ {scalar_t__ state; int request_cx; int request_cy; int *** chunks; TYPE_2__ rm; void* face_buffer; void* build_buffer; int request_received; } ;
typedef TYPE_1__ mesh_worker ;


 int BUILD_BUFFER_SIZE ;
 int FACE_BUFFER_SIZE ;
 int SDL_LockMutex (int ) ;
 int SDL_SemWait (int ) ;
 int SDL_UnlockMutex (int ) ;
 scalar_t__ WSTATE_mesh_ready ;
 scalar_t__ WSTATE_requested ;
 scalar_t__ WSTATE_running ;
 int assert (int) ;
 int build_chunk (int,int,int ***,TYPE_2__*) ;
 int chunk_cache_mutex ;
 int deref_fastchunk (int *) ;
 int * get_converted_fastchunk (int,int) ;
 void* malloc (int ) ;

int mesh_worker_handler(void *data)
{
   mesh_worker *mw = data;
   mw->face_buffer = malloc(FACE_BUFFER_SIZE);
   mw->build_buffer = malloc(BUILD_BUFFER_SIZE);




   for(;;) {
      int i,j;
      int cx,cy;


      SDL_SemWait(mw->request_received);


      assert(mw->state == WSTATE_requested);
      cx = mw->request_cx;
      cy = mw->request_cy;


      mw->state = WSTATE_running;


      for (j=0; j < 4; ++j)
         for (i=0; i < 4; ++i)
            mw->chunks[j][i] = get_converted_fastchunk(cx-1 + i, cy-1 + j);


      mw->rm.build_buffer = mw->build_buffer;
      mw->rm.face_buffer = mw->face_buffer;
      build_chunk(cx, cy, mw->chunks, &mw->rm);
      mw->state = WSTATE_mesh_ready;






      SDL_LockMutex(chunk_cache_mutex);
      for (j=0; j < 4; ++j)
         for (i=0; i < 4; ++i) {
            deref_fastchunk(mw->chunks[j][i]);
            mw->chunks[j][i] = ((void*)0);
         }
      SDL_UnlockMutex(chunk_cache_mutex);
   }
   return 0;
}
