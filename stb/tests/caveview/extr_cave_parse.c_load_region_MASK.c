#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x; int z; int /*<<< orphan*/ ** sector_data; } ;
typedef  TYPE_1__ region ;

/* Variables and functions */
 int NUM_CHUNKS_PER_REGION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * last_region ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static region *FUNC5(int reg_x, int reg_z)
{
   region *r;
   int x,z;

   FUNC3(reg_x, reg_z);

   r = FUNC1(sizeof(*r));

   if (last_region == NULL) {
      FUNC2(r, 0, sizeof(*r));
   } else {
      FUNC0(last_region, 0, SEEK_SET);
      for (z=0; z < NUM_CHUNKS_PER_REGION; ++z)
         for (x=0; x < NUM_CHUNKS_PER_REGION; ++x)
            r->sector_data[z][x] = FUNC4(last_region);
   }
   r->x = reg_x;
   r->z = reg_z;

   return r;
}