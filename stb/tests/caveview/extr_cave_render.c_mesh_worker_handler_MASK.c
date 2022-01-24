#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* face_buffer; void* build_buffer; } ;
struct TYPE_3__ {scalar_t__ state; int request_cx; int request_cy; int /*<<< orphan*/ *** chunks; TYPE_2__ rm; void* face_buffer; void* build_buffer; int /*<<< orphan*/  request_received; } ;
typedef  TYPE_1__ mesh_worker ;

/* Variables and functions */
 int /*<<< orphan*/  BUILD_BUFFER_SIZE ; 
 int /*<<< orphan*/  FACE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ WSTATE_mesh_ready ; 
 scalar_t__ WSTATE_requested ; 
 scalar_t__ WSTATE_running ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ***,TYPE_2__*) ; 
 int /*<<< orphan*/  chunk_cache_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(void *data)
{
   mesh_worker *mw = data;
   mw->face_buffer = FUNC7(FACE_BUFFER_SIZE);
   mw->build_buffer = FUNC7(BUILD_BUFFER_SIZE);

   // this loop only works because the compiler can't
   // tell that the SDL_calls don't access mw->state;
   // really we should barrier that stuff
   for(;;) {
      int i,j;
      int cx,cy;

      // wait for a chunk request
      FUNC1(mw->request_received);

      // analyze the chunk request
      FUNC3(mw->state == WSTATE_requested);
      cx = mw->request_cx;
      cy = mw->request_cy;

      // this is inaccurate as it can block while another thread has the cache locked
      mw->state = WSTATE_running;

      // get the chunks we need (this takes a lock and caches them)
      for (j=0; j < 4; ++j)
         for (i=0; i < 4; ++i)
            mw->chunks[j][i] = FUNC6(cx-1 + i, cy-1 + j);

      // build the mesh based on the chunks
      mw->rm.build_buffer = mw->build_buffer;
      mw->rm.face_buffer = mw->face_buffer;
      FUNC4(cx, cy, mw->chunks, &mw->rm);
      mw->state = WSTATE_mesh_ready;
      // don't need to notify of this, because it gets polled

      // when done, free the chunks

      // for efficiency we just take the mutex once around the whole thing,
      // though this spreads the mutex logic over two files
      FUNC0(chunk_cache_mutex);
      for (j=0; j < 4; ++j)
         for (i=0; i < 4; ++i) {
            FUNC5(mw->chunks[j][i]);
            mw->chunks[j][i] = NULL;
         }
      FUNC2(chunk_cache_mutex);
   }
   return 0;
}