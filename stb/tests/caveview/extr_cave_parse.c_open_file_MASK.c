#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * last_region ; 
 int last_region_x ; 
 int last_region_z ; 
 int opened ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 

__attribute__((used)) static void FUNC3(int reg_x, int reg_z)
{
   if (!opened || last_region_x != reg_x || last_region_z != reg_z) {
      char filename[256];
      if (last_region != NULL)
         FUNC0(last_region);
      FUNC2(filename, "r.%d.%d.mca", reg_x, reg_z);
      last_region = FUNC1(filename, "rb");
      last_region_x = reg_x;
      last_region_z = reg_z;
      opened = 1;
   }
}