#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  float Uint64 ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ WSTATE_idle ; 
 TYPE_1__* mesh_data ; 
 int num_mesh_workers ; 
 int /*<<< orphan*/  FUNC3 (char*,float) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
   int a,b,x,y;

   Uint64 start_time, end_time;
   #ifdef NDEBUG
   int range = 32;
   #else
   int range = 12;
   #endif

   start_time = FUNC1();

   // iterate in 8x8 clusters of qchunks at a time to get better converted-chunk-cache reuse
   // than a purely row-by-row ordering is (single-threaded this is a bigger win than
   // any of the above optimizations were, since it halves zlib/mc-conversion costs)
   for (x=-range; x <= range; x += 16)
      for (y=-range; y <= range; y += 16)
         for (b=y; b < y+16 && b <= range; b += 2)
            for (a=x; a < x+16 && a <= range; a += 2)
               while (!FUNC4(a, b)) { // if request fails, all threads are busy
                  FUNC6();
                  FUNC0(1);
               }

   // wait until all the workers are done,
   // (this is only needed if we want to time
   // when the build finishes, or when we want to reset the
   // cache size; otherwise we could just go ahead and
   // start rendering whatever we've got)
   for(;;) {
      int i;
      FUNC6();
      for (i=0; i < num_mesh_workers; ++i)
         if (mesh_data[i].state != WSTATE_idle)
            break;
      if (i == num_mesh_workers)
         break;
      FUNC0(3);
   }

   end_time = FUNC1();
   FUNC3("Build time: %7.2fs\n", (end_time - start_time) / (float) FUNC2());

   // don't waste lots of storage on chunk caches once it's finished starting-up;
   // this was only needed to be this large because we worked in large blocks
   // to maximize sharing
   FUNC5(32);
}